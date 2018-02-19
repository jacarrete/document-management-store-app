variable "product" {
    type    = "string"
    default = "dm"
}

variable "app_name" {
    default = "store"
}

variable "app_type" {
    default = "app"
}

variable "team_name" {
    default = "evidence"
}

variable "app_language" {
    default = "java"
}

variable "location" {
    type    = "string"
    default = "UK South"
}

variable "env" {
    type = "string"
}

variable "subscription" {
    type = "string"
}

variable "ilbIp"{

}

variable "tenant_id" {

}

variable "jenkins_AAD_objectId" {
    type                        = "string"
    description                 = "(Required) The Azure AD object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies."
}

////////////////////////////////////////////////
//Addtional Vars ///////////////////////////////
////////////////////////////////////////////////

variable "java_opts" {
    default = ""
}
////////////////////////////////////////////////
// Endpoints
////////////////////////////////////////////////

variable "idam-api-url" {
    default = "http://betaDevBccidamAppLB.reform.hmcts.net:80"
}

variable "s2s-url" {
    default = "http://betaDevBccidamS2SLB.reform.hmcts.net:80"
}
////////////////////////////////////////////////
// Logging
////////////////////////////////////////////////
variable "root_appender" {
    default = "JSON_CONSOLE"
}

variable "json_console_pretty_print" {
    default = "false"
}

variable "log_output" {
    default = "single"
}

variable "root_logging_level" {
    default = "INFO"
}

variable "log_level_spring_web" {
    default = "INFO"
}

variable "log_level_dm" {
    default = "INFO"
}

variable "show_sql" {
    default = "true"
}

variable "endpoints_health_sensitive" {
    default = "true"
}

variable "endpoints_info_sensitive" {
    default = "true"
}
////////////////////////////////////////////////
// Toggle Features
////////////////////////////////////////////////
variable "enable_idam_healthcheck" {
    default = "false"
}

variable "enable_metadata_search" {
    default = "true"
}

variable "enable_document_and_metadata_upload" {
    default = "true"
}

variable "enable_folder_api" {
    default = "true"
}

variable "enable_delete" {
    default = "true"
}

variable "enable_ttl" {
    default = "true"
}

variable "enable_thumbnail" {
    default = "true"
}

//// Whitelists
//variable "dm_multipart_whitelist" {
//
//}
//
//variable "s2s_names_whitelist" {
//
//}
//
//variable "case_worker_roles" {
//
//}

// Addtional
variable "max_file_size_in_mb" {
    default = "500"
}
