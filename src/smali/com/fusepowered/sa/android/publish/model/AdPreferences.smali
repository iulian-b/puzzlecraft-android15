.class public Lcom/fusepowered/sa/android/publish/model/AdPreferences;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;
    }
.end annotation


# static fields
.field public static final TYPE_APP_WALL:Ljava/lang/String; = "APP_WALL"

.field public static final TYPE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final TYPE_INAPP_EXIT:Ljava/lang/String; = "INAPP_EXIT"

.field public static final TYPE_SCRINGO_TOOLBAR:Ljava/lang/String; = "SCRINGO_TOOLBAR"

.field public static final TYPE_TEXT:Ljava/lang/String; = "TEXT"

.field private static final serialVersionUID:J = -0x482b248f0d9473bdL


# instance fields
.field private adTag:Ljava/lang/String;

.field protected advertiserId:Ljava/lang/String;

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

.field protected country:Ljava/lang/String;

.field private gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

.field private keywords:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field protected template:Ljava/lang/String;

.field private testMode:Z

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->age:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->age:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    iget-object v0, p1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->age:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->age:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCategoryExclude(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAdTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAge(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->age:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->getInstance()Lcom/fusepowered/sa/android/publish/StartAppSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->getSDKAdPrefs(Landroid/content/Context;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->getAge()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->age:Ljava/lang/Integer;

    goto :goto_0
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

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

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

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getGender(Landroid/content/Context;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->getInstance()Lcom/fusepowered/sa/android/publish/StartAppSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->getSDKAdPrefs(Landroid/content/Context;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;->getGender()Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public isSimpleToken()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    return v0
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    return-object p0
.end method

.method public setAge(Ljava/lang/Integer;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->age:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGender(Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->gender:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setLatitude(D)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setLongitude(D)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public setPublisherId(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    return-object p0
.end method

.method public setTestMode(Z)Lcom/fusepowered/sa/android/publish/model/AdPreferences;
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPreferences [publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->testMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->adTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoriesExclude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
