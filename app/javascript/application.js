// Entry point for the build script in your package.json
import "../assets/stylesheets/application.tailwind.css";
import "@hotwired/turbo-rails"
import "./controllers"
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = true
