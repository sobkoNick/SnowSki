package com.snowski.entity;


import javax.persistence.*;

/**
 * Created by Mykola on 23.06.2017.
 */
@Entity
public class ProductImages {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String pathToImage;

    @ManyToOne
    private Product product;

    public ProductImages() {
    }

    public ProductImages(String pathToImage) {
        this.pathToImage = pathToImage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPathToImage() {
        return pathToImage;
    }

    public void setPathToImage(String pathToImage) {
        this.pathToImage = pathToImage;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
