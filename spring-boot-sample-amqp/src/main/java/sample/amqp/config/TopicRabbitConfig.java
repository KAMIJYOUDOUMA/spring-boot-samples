package sample.amqp.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.TopicExchange;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import sample.amqp.constant.MQConst;

@Configuration
public class TopicRabbitConfig {

    @Bean
    public Queue queueMessage1() {
        return new Queue(MQConst.TOPIC_QUEUENAME1);
    }

    @Bean
    public Queue queueMessage2() {
        return new Queue(MQConst.TOPIC_QUEUENAME2);
    }

    @Bean
    TopicExchange exchange() {
        return new TopicExchange(MQConst.TOPIC_EXCHANGE);
    }

    @Bean
    Binding bindingExchangeMessage(Queue queueMessage1, TopicExchange exchange) {
        // 将队列1绑定到名为topicKey.A的routingKey
        return BindingBuilder.bind(queueMessage1).to(exchange).with(MQConst.TOPIC_KEY1);
    }

    @Bean
    Binding bindingExchangeMessages(Queue queueMessage2, TopicExchange exchange) {
        // 将队列2绑定到所有topicKey.开头的routingKey
        return BindingBuilder.bind(queueMessage2).to(exchange).with(MQConst.TOPIC_KEYS);
    }
}