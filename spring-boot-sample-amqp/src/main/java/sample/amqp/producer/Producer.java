package sample.amqp.producer;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import sample.amqp.constant.MQConst;

@Component
public class Producer {

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Scheduled(fixedDelay = 10000L)
    public void send() {
        rabbitTemplate.convertAndSend("hello", "hello");
        // Topic
        rabbitTemplate.convertAndSend(MQConst.TOPIC_EXCHANGE, MQConst.TOPIC_KEYS, "from keys");
        rabbitTemplate.convertAndSend(MQConst.TOPIC_EXCHANGE, MQConst.TOPIC_KEY1, "from key1");

        // FanOut
        rabbitTemplate.convertAndSend(MQConst.FANOUT_EXCHANGE, "", "fanout");
    }

}
