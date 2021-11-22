#[macro_use] extern crate rocket;
use rocket::serde::{Serialize, json::Json};
use geojson::FeatureCollection;
use geo_types::{GeometryCollection, LineString, Polygon};
use std::iter::FromIterator;

#[derive(Serialize)]
struct Task {
    number: usize
}

#[get("/")]
fn api() -> Json<Task> {
    Json(Task { number: 42 })
}

#[get("/collection")]
fn collection() -> Json<FeatureCollection> {
    let polygon = Polygon::new(
        LineString::from(vec![(0., 0.), (1., 1.), (1., 0.), (0., 0.)]),
        vec![],
    );
    let geometry = GeometryCollection::from_iter(vec![polygon]);
    let feature = FeatureCollection::from(&geometry);
    Json(feature)
}

#[launch]
fn rocket() -> _ {
    rocket::build()
        .mount("/", routes![api, collection])
}
