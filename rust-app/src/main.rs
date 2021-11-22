#[macro_use] extern crate rocket;
use rocket::serde::{Serialize, json::Json};

#[derive(Serialize)]
struct Task {
    number: usize
}

#[get("/")]
fn api() -> Json<Task> {
    Json(Task { number: 42 })
}

#[launch]
fn rocket() -> _ {
    rocket::build()
        .mount("/", routes![api])
}
