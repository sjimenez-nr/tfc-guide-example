

provider "newrelic" {
  api_key = var.api_key
  account_id = 2508259
}


data "newrelic_application" "web_portal" {
  name = "WebPortal"
}

resource "newrelic_alert_policy" "golden_signal_policy" {
     name = "Terradactyls - Golden Signals - ${data.newrelic_application.web_portal.name} "
}
