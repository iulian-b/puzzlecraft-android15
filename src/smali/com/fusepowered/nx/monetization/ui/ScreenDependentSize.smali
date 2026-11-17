.class public Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;
.super Ljava/lang/Object;
.source "ScreenDependentSize.java"


# instance fields
.field private final LARGE:I

.field private final NORMAL:I

.field private final SMALL:I

.field private final XLARGE:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;-><init>(IIII)V

    .line 33
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "small"    # I
    .param p2, "normal"    # I
    .param p3, "large"    # I
    .param p4, "xlarge"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->SMALL:I

    .line 37
    iput p2, p0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->NORMAL:I

    .line 38
    iput p3, p0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->LARGE:I

    .line 39
    iput p4, p0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->XLARGE:I

    .line 40
    return-void
.end method

.method public static varargs setScreenSizes(Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;[Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;)V
    .locals 5
    .param p0, "screenSize"    # Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;
    .param p1, "sizes"    # [Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    .prologue
    .line 46
    array-length v1, p1

    if-gtz v1, :cond_1

    .line 70
    :cond_0
    return-void

    .line 50
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 51
    .local v0, "screenDependentSize":Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;
    sget-object v3, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize$1;->$SwitchMap$com$nativex$monetization$ui$DeviceScreenSize$SCREEN_SIZE:[I

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;->getScreenSize()Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 61
    :pswitch_0
    iget v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->NORMAL:I

    iput v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    .line 68
    :goto_1
    iget v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :pswitch_1
    iget v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->XLARGE:I

    iput v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    goto :goto_1

    .line 56
    :pswitch_2
    iget v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->LARGE:I

    iput v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    goto :goto_1

    .line 64
    :pswitch_3
    iget v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->SMALL:I

    iput v3, v0, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
