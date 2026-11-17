.class public Lcom/fusepowered/sa/android/publish/model/GetAdRequest;
.super Lcom/fusepowered/sa/android/publish/model/BaseRequest;


# instance fields
.field private adTag:Ljava/lang/String;

.field private adsNumber:I

.field private advertiserId:Ljava/lang/String;

.field private age:Ljava/lang/Integer;

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private country:Ljava/lang/String;

.field private engInclude:Z

.field private gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

.field private keywords:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private offset:I

.field private packagesExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

.field private simpleToken:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private testMode:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;-><init>()V

    iput v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adsNumber:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->offset:I

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->packagesExclude:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->engInclude:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCategoryExclude(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fillAdPreferences(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V
    .locals 1

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getAdInformationConfig()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->e()Lcom/fusepowered/sa/android/publish/adinformation/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/adinformation/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->isSimpleToken()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p4, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    invoke-virtual {p2, p1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getAge(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->age:Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getGender(Landroid/content/Context;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getAdTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adTag:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->isTestMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->testMode:Z

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getCategories()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->getCategoriesExclude()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    iget-object v0, p2, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setCountry(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setAdvertiser(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setTemplate(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setType(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsNumber()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adsNumber:I

    return v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getCategoriesExclude()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
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

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v1, "placement"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "testMode"

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->testMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "longitude"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "latitude"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "gender"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "age"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->age:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "keywords"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "adTag"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adTag:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "template"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "adsNumber"

    iget v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adsNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "category"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    const-string v1, "categoryExclude"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    const-string v1, "packageExclude"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->packagesExclude:Ljava/util/Set;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    const-string v1, "offset"

    iget v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "token"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v1, "engInclude"

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->engInclude:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "country"

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->getAdvertiserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "advertiserId"

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->getAdvertiserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "type"

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_3
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->offset:I

    return v0
.end method

.method public getPackagesExclude()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->packagesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getPlacement()Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    return-object v0
.end method

.method public getSimpleToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isEngInclude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->engInclude:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->testMode:Z

    return v0
.end method

.method public setAdTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adTag:Ljava/lang/String;

    return-void
.end method

.method public setAdsNumber(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adsNumber:I

    return-void
.end method

.method public setAdvertiser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    return-void
.end method

.method public setAge(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->age:Ljava/lang/Integer;

    return-void
.end method

.method public setCategories(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    return-void
.end method

.method public setCategoriesExclude(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    return-void
.end method

.method public setEngInclude(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->engInclude:Z

    return-void
.end method

.method public setGender(Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->offset:I

    return-void
.end method

.method public setPackagesExclude(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->packagesExclude:Ljava/util/Set;

    return-void
.end method

.method public setPlacement(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    return-void
.end method

.method public setSimpleToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->testMode:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetAdRequest ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", testMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->testMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->longitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->latitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", gender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->age:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", keywords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->keywords:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", template="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adsNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->adsNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", categories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categories:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", categoriesExclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->categoriesExclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", packagesExclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->packagesExclude:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", simpleToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->simpleToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", engInclude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->engInclude:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", advertiserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->advertiserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
