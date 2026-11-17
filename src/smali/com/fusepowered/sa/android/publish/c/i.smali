.class public Lcom/fusepowered/sa/android/publish/c/i;
.super Lcom/fusepowered/sa/android/publish/c/c;


# instance fields
.field private g:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;)V
    .locals 6

    sget-object v5, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/c/c;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    iput-object p5, p0, Lcom/fusepowered/sa/android/publish/c/i;->g:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    return-void
.end method


# virtual methods
.method protected a(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 0

    return-void
.end method

.method protected e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;
    .locals 2

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/c/c;->e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/i;->g:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/i;->g:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getImageSize()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setWidth(I)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/i;->g:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getImageSize()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setHeight(I)V

    return-object v0
.end method
