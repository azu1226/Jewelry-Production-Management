package jewelry_db;

public class GemStone { //
    private String mineralName;
    private String gemName;
    private String area;
    private String color;
    private String cut;
    private double carat;
    private double height;
    private double width;
    private double depth;
    private double hard;
    private boolean change;
    private boolean treatment;
    private String processing;
    private String memo;

    //コンストラクタ
    public GemStone(String mineralName,String gemName,String area,String color,
                    String cut,double carat,double height, double width, double depth, double hard,
                    boolean change,boolean treatment,String processing,String memo) {
        this.mineralName = mineralName;
        this.gemName = gemName;
        this.area = area;
        this.color = color;
        this.cut = cut;
        this.carat = carat;
        this.height = height;
        this.width = width;
        this.depth = depth;
        this.hard = hard;
        this.change = change;
        this.treatment = treatment;
        this.processing = processing;
        this.memo = memo;
    }

    //ゲッター
    public String getMineralName() {return mineralName;}
    public String getGemName() {return gemName;}
    public String getArea() {return area;}
    public String getColor() {return color;}
    public String getCut() {return cut;}
    public double getCarat() {return carat;}
    public double getHeight() {return height;}
    public double getWidth() {return width;}
    public double getDepth() {return depth;}
    public double getHard() {return hard;}
    public boolean isChange() {return change;}
    public boolean isTreatment() {return treatment;}
    public String getProcessing() {return processing;}
    public String getMemo() {return memo;}
    //Java上でデータはいじらないの(変更する際はDB上)でセッターは不要




}
