use std::io;

pub fn main() {
    let mut highest: f64 = 0.0;
    let mut lowest: f64 = 0.0;

    for i in 1..4 {
        println!("Enter a price for item number {}:", i);

        let mut input_text = String::new();

        io::stdin()
            .read_line(&mut input_text)
            .expect("Could not read from stdin");

        let trimmed = input_text.trim();
        match trimmed.parse::<f64>() {
            Ok(price) => {
                if i == 1 {
                    highest = price;
                    lowest = price;
                } else if price > highest {
                    highest = price;
                } else if price < lowest {
                    lowest = price;
                }
            }
            Err(..) => println!("This was not a number: {}", trimmed),
        };
    }
    println!("The highest price is {}", highest);
    println!("The lowest price is {}", lowest);
}
