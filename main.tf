resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
  overwrite = true
  key_id = "efa47460-43f4-4740-89f1-f34515224c3a"

}
variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.trrdops.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.trrdops.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.trrdops.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.trrdops.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.trrdops.store:8080/", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.trrdops.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.trrdops.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.trrdops.store:27017/catalogue", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.trrdops.store", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.trrdops.store", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.trrdops.store", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.trrdops.store:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.trrdops.store", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.trrdops.store", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.trrdops.store:27017/users", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop123", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    #passwords will be never part of git repos
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
  ]
}



