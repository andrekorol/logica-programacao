use std::io;

pub fn main() {
    println!("Enter an integer:");

    let mut input_text = String::new();

    io::stdin()
        .read_line(&mut input_text)
        .expect("Could not read from stdin");

    let trimmed = input_text.trim();
    match trimmed.parse::<u32>() {
        Ok(n) => {
            if n & 1 == 1 {
                println!("{} is odd", n);
            } else {
                println!("{} is even", n);
            }
        }
        Err(..) => println!("This was not an integer: {}", trimmed),
    };
}
