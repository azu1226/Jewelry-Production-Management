package jewelry_db.date;

public class Master {

    private String metalName;
    private String gemCategories;

    private int chainLength;
    private int ringSize;
    private int pinkyringSize;

    public Master(String metalName, String gemCategories, int chainLength, int ringSize, int pinkyringSize) {
        this.metalName = metalName;
        this.gemCategories = gemCategories;
        this.chainLength = chainLength;
        this.ringSize = ringSize;
        this.pinkyringSize = pinkyringSize;
    }

    public String getMetalName() {return metalName;}
    public String getGemCategories() {return gemCategories;}
    public int getChainLength() {return chainLength;}
    public int getRingSize() {return ringSize;}
    public int getPinkyringSize() {return pinkyringSize;}
}



