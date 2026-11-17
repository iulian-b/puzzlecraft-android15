.class public Lcom/fusepowered/sa/android/publish/c/f;
.super Lcom/fusepowered/sa/android/publish/c/b;


# instance fields
.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/d;ILcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v5, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/sa/android/publish/c/b;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Z)V

    iput v6, p0, Lcom/fusepowered/sa/android/publish/c/f;->g:I

    iput p3, p0, Lcom/fusepowered/sa/android/publish/c/f;->g:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/fusepowered/sa/android/publish/c/b;->a(Ljava/lang/Boolean;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Html onPostExecute, result=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/f;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/f;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/f;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/f;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/f;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/f;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v0, Lcom/fusepowered/sa/android/publish/a/d;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/a/d;->setHtml(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/f;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v0, Lcom/fusepowered/sa/android/publish/a/d;

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/c/b;->e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/d;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setWidth(I)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/d;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setHeight(I)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/c/f;->g:I

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setOffset(I)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getBannerOptions()Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    return-object v1
.end method
