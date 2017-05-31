package com.snowski.validator.producerValidator;

import com.snowski.dao.ProducerDao;
import com.snowski.entity.Producer;
import com.snowski.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


/**
 * Created by Mykola on 31.05.2017.
 */
@Component
public class ProducerValidator implements Validator{
    @Autowired
    private ProducerDao producerDao;
    @Override
    public void validate(Object o) throws Exception {
        Producer producer = (Producer) o;

        if (producer.getName().isEmpty()) {
            throw new ProducerException(ProducerValidatorMessages.NAME_FIELD_INCORRECT);
        } else if (producer.getDescription().length() < 20) {
            throw new  ProducerException(ProducerValidatorMessages.DESCRIPTION_INCORRECT);
        } else if (producer.getNumberOfProducts() < 1) {
            throw new ProducerException(ProducerValidatorMessages.NUMBER_OF_PRODUCTS_INCORRECT);
        }
    }
}
