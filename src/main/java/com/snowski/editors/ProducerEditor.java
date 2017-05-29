package com.snowski.editors;

import com.snowski.entity.Producer;
import com.snowski.service.ProducerService;

import java.beans.PropertyEditorSupport;

/**
 * Created by Mykola on 29.05.2017.
 */
public class ProducerEditor extends PropertyEditorSupport {

//    private  final ProducerService producerService;
//
//    public ProducerEditor(ProducerService producerService) {
//        this.producerService = producerService;
//    }

    @Override
    public void setAsText(String idFromJSP) throws IllegalArgumentException {
        //Producer producer = producerService.findOne(Integer.parseInt(idFromJSP));

        Producer producer = new Producer();
        producer.setId(Integer.parseInt(idFromJSP));
        setValue(producer);
    }
}
