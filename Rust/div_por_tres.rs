use std::io;

pub fn main() {
    println!("Enter an integer: ");

    let mut input_text = String::new();

    io::stdin()
        .read_line(&mut input_text)
        .expect("Failed to read from stdin");

    let trimmed = input_text.trim();
    match trimmed.parse::<f64>() {
        Ok(n) => {
            if n % 3 == 0 {
                println!("{} is divisible by 3", n);
            } else {
                println!("{} is not divisible by 3", n);
            }
        },
        Err(..) => println!("This was not an integer: {}", trimmed),
    };
}
