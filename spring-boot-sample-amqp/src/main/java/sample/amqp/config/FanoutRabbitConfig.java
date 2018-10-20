package sample.amqp.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.FanoutExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import sample.amqp.constant.MQConst;

@Configuration
public class FanoutRabbitConfig {

    @Bean
    public Queue MessageA() {
        return new Queue(MQConst.FANOUT_QUEUENAME1);
    }

    @Bean
    public Queue MessageB() {
        return new Queue(MQConst.FANOUT_QUEUENAME2);
    }

    @Bean
    FanoutExchange fanoutExchange() {
        return new FanoutExchange(MQConst.FANOUT_EXCHANGE);
    }

    @Bean
    Binding bindingExchangeA(Queue MessageA, FanoutExchange fanoutExchange) {
        return BindingBuilder.bind(MessageA).to(fanoutExchange);
    }

    @Bean
    Binding bindingExchangeB(Queue MessageB, FanoutExchange fanoutExchange) {
        return BindingBuilder.bind(MessageB).to(fanoutExchange);
    }

}