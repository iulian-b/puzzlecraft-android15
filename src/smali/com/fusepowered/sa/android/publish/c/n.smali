.class public Lcom/fusepowered/sa/android/publish/c/n;
.super Lcom/fusepowered/sa/android/publish/c/c;


# instance fields
.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/a/l;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 6

    sget-object v5, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->DEVICE_SIDEBAR:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/c/c;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/c/n;->g:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/c/n;->b()Lcom/fusepowered/sa/android/publish/model/BaseResponse;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/fusepowered/sa/android/publish/c/c;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x6

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;

    if-nez p1, :cond_0

    const-string v0, "Error Empty Response"

    invoke-static {v3, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/n;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error msg = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/n;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v1, Lcom/fusepowered/sa/android/publish/a/l;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/sa/android/publish/a/l;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/sa/android/publish/a/l;->setAdInfoOverride(Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-string v1, "Empty Response"

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/c/n;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/n;->g:Landroid/app/Activity;

    const-string v3, "slideEvent"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/n;->g:Landroid/app/Activity;

    const-string v3, "trackingEvent"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/n;->g:Landroid/app/Activity;

    const-string v2, "trackingUrl"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()Lcom/fusepowered/sa/android/publish/model/BaseResponse;
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/c/c;->e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/n;->a:Landroid/content/Context;

    sget-object v3, Lcom/fusepowered/sa/android/publish/b$a;->b:Lcom/fusepowered/sa/android/publish/b$a;

    invoke-static {v3}, Lcom/fusepowered/sa/android/publish/b;->a(Lcom/fusepowered/sa/android/publish/b$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/fusepowered/sa/android/publish/e/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/fusepowered/sa/android/publish/model/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/GetAdResponse;
    :try_end_0
    .catch Lcom/fusepowered/sa/android/publish/f/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    const-string v3, "Unable to handle GetSearchBoxService!!!!"

    invoke-static {v2, v3, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/f/l;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/n;->f:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method
