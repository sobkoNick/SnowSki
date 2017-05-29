package com.snowski.editors;

import com.snowski.entity.Order;
import com.snowski.entity.Product;

import java.beans.PropertyEditorSupport;

/**
 * Created by Mykola on 29.05.2017.
 */
public class ProductEditor extends PropertyEditorSupport {
    @Override
    public void setAsText(String id) throws IllegalArgumentException {
        Product product = new Product();
        product.setId(Integer.parseInt(id));

        setValue(product);
    }
}
