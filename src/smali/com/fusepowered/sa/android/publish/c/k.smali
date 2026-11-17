.class public Lcom/fusepowered/sa/android/publish/c/k;
.super Lcom/fusepowered/sa/android/publish/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/h;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 6

    sget-object v5, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/c/c;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 3

    check-cast p1, Lcom/fusepowered/sa/android/publish/a/h;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/a/h;->a()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/e;->a()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    sget-object v2, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/list3d/e;->a(Lcom/fusepowered/sa/android/publish/model/AdDetails;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;
    .locals 2

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/c/c;->e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;

    move-result-object v0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getMaxAds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    return-object v0
.end method
