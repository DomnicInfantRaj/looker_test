project_name: "looker_extension_test"
application: explore-assistant {
  label: "Explore Assistant test"
  file: "bundle.js"
  # url: "https://8080-cs-2aab8128-5f8c-426d-9b50-4807e523add1.cs-asia-southeast1-ajrg.cloudshell.dev/bundle.js?authuser=0"
  entitlements: {
    core_api_methods: ["lookml_model_explore","run_inline_query","create_sql_query","run_sql_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
  }
}
