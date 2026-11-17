.class public final Lcom/fusepowered/l1/utilites/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# static fields
.field private static mInstance:Lcom/fusepowered/l1/utilites/Dimensions;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/fusepowered/l1/utilites/Dimensions;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fusepowered/l1/utilites/Dimensions;->mInstance:Lcom/fusepowered/l1/utilites/Dimensions;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/fusepowered/l1/utilites/Dimensions;

    invoke-direct {v0}, Lcom/fusepowered/l1/utilites/Dimensions;-><init>()V

    sput-object v0, Lcom/fusepowered/l1/utilites/Dimensions;->mInstance:Lcom/fusepowered/l1/utilites/Dimensions;

    .line 22
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/utilites/Dimensions;->mInstance:Lcom/fusepowered/l1/utilites/Dimensions;

    return-object v0
.end method


# virtual methods
.method public getBtnCloseHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x420c0000    # 35.0f

    .line 73
    invoke-virtual {p0, p1}, Lcom/fusepowered/l1/utilites/Dimensions;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 88
    invoke-static {v1}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    :goto_0
    return v0

    .line 76
    :sswitch_0
    invoke-static {v1}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 79
    :sswitch_1
    invoke-static {v1}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 82
    :sswitch_2
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 85
    :sswitch_3
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xa0 -> :sswitch_2
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCloseTouchAreaHeight(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v1, 0x42200000    # 40.0f

    .line 93
    invoke-virtual {p0, p1}, Lcom/fusepowered/l1/utilites/Dimensions;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 108
    invoke-static {v2}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    :goto_0
    return v0

    .line 96
    :sswitch_0
    invoke-static {v2}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 99
    :sswitch_1
    invoke-static {v1}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 102
    :sswitch_2
    invoke-static {v1}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 105
    :sswitch_3
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/fusepowered/l1/Utils;->convertDpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xa0 -> :sswitch_2
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/l1/utilites/Dimensions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/l1/utilites/Dimensions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/utilites/Dimensions;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 30
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/fusepowered/l1/utilites/Dimensions;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/utilites/Dimensions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/l1/utilites/Dimensions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    iget-object v0, p0, Lcom/fusepowered/l1/utilites/Dimensions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFooterButtonsHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x19

    .line 55
    invoke-virtual {p0, p1}, Lcom/fusepowered/l1/utilites/Dimensions;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v1, :sswitch_data_0

    .line 68
    const/16 v0, 0x3c

    :goto_0
    :sswitch_0
    return v0

    .line 58
    :sswitch_1
    const/16 v0, 0x28

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getHeaderHeight(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/fusepowered/l1/utilites/Dimensions;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 50
    const/16 v0, 0x58

    :goto_0
    return v0

    .line 40
    :sswitch_0
    const/16 v0, 0x3c

    goto :goto_0

    .line 43
    :sswitch_1
    const/16 v0, 0x2c

    goto :goto_0

    .line 46
    :sswitch_2
    const/16 v0, 0x22

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method
