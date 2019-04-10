use std::io;

pub fn main() {
    println!("Enter the temperature in Fahrenheit:");

    let mut input_text = String::new();

    io::stdin()
        .read_line(&mut input_text)
        .expect("Failed to read from stdin");

    let trimmed = input_text.trim();
    match trimmed.parse::<f64>() {
        Ok(fahr) => {
            let cels = 5.0 * (fahr - 32.0) / 9.0;
            let formatted_cels = format!("{:.*}", 2, cels);
            println!("The temperature in Celsius is {}", formatted_cels);
        }
        Err(..) => println!("This was not a number: {}", trimmed),
    };
}
