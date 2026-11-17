.class public abstract Lcom/fusepowered/sa/android/publish/model/BaseRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/model/NameValueSerializer;


# static fields
.field private static final OS:Ljava/lang/String; = "android"


# instance fields
.field private deviceVersion:Ljava/lang/String;

.field private height:I

.field private isp:Ljava/lang/String;

.field private ispName:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private sdkId:I

.field private sdkVersion:Ljava/lang/String;

.field private signalLevel:Ljava/lang/String;

.field private subProductId:Ljava/lang/String;

.field private subPublisherId:Ljava/lang/String;

.field private unknownSourcesAllowed:Ljava/lang/Boolean;

.field private userAdvertisingId:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    sget-object v0, Lcom/fusepowered/sa/android/publish/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->os:Ljava/lang/String;

    sget v0, Lcom/fusepowered/sa/android/publish/b;->b:I

    iput v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->sdkId:I

    return-void
.end method

.method private setNetworkType(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/fusepowered/sa/android/publish/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->networkType:Ljava/lang/String;

    return-void
.end method

.method private setSignalLevel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "e106"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->signalLevel:Ljava/lang/String;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/f/h;->a()Lcom/fusepowered/sa/android/publish/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/f/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->signalLevel:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public fillApplicationDetails(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setPublisherId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setProductId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fusepowered/sa/android/publish/f/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setUserAdvertisingId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setPackageId(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setManufacturer(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setModel(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setDeviceVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setLocale(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setWidth(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setHeight(I)V

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setNetworkType(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setSignalLevel(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setUnknownSourcesAllowed(Ljava/lang/Boolean;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setIsp(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setIspName(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setIsp(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->setIspName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->height:I

    return v0
.end method

.method public getIsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public getIspName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->ispName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNameValueMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/NameValueObject;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "publisherId"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->publisherId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "productId"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->productId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "os"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->os:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "sdkVersion"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "packageId"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->packageId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "userAdvertisingId"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->userAdvertisingId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "model"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->model:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "manufacturer"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->manufacturer:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "deviceVersion"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->deviceVersion:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "locale"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->locale:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "isp"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->isp:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "ispName"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->ispName:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "subPublisherId"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->subPublisherId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "subProductId"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->subProductId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "grid"

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "silev"

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->getSignalLevel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v2, "outsource"

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->isUnknownSourcesAllowed()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "width"

    iget v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "height"

    iget v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->height:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "sdkId"

    iget v2, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->sdkId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->isUnknownSourcesAllowed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x3d

    const/16 v6, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/NameValueObject;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/NameValueObject;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/NameValueObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/NameValueObject;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/NameValueObject;->getValueSet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/NameValueObject;->getValueSet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/NameValueObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->signalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getSubProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->subProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubPublisherId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->subPublisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAdvertisingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->userAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->width:I

    return v0
.end method

.method public isUnknownSourcesAllowed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->unknownSourcesAllowed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDeviceVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->deviceVersion:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->height:I

    return-void
.end method

.method public setIsp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->isp:Ljava/lang/String;

    return-void
.end method

.method public setIspName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->ispName:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->locale:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->model:Ljava/lang/String;

    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->packageId:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->productId:Ljava/lang/String;

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSubProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->subProductId:Ljava/lang/String;

    return-void
.end method

.method public setSubPublisherId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->subPublisherId:Ljava/lang/String;

    return-void
.end method

.method public setUnknownSourcesAllowed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->unknownSourcesAllowed:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserAdvertisingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->userAdvertisingId:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRequest [parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
