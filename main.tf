

provider "newrelic" {
  api_key = var.api_key
  account_id = var.account_id
  region = "Staging"

  alias = "staging"
}


data "newrelic_application" "web_portal" {
      name = "Web Portal"
}

resource "newrelic_alert_policy" "golden_signal_policy" {
     name = "Terradactyls - Golden Signals - ${data.newrelic_application.web_portal.name} "
}
