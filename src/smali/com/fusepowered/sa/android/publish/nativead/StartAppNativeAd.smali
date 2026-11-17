.class public Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;
.super Lcom/fusepowered/sa/android/publish/Ad;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;,
        Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAppNativeAd"


# instance fields
.field private adEventDelegate:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;

.field private listNativeAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAds:Lcom/fusepowered/sa/android/publish/a/g;

.field private preferences:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

.field private totalObjectsLoaded:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/Ad;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)Lcom/fusepowered/sa/android/publish/a/g;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->nativeAds:Lcom/fusepowered/sa/android/publish/a/g;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->preferences:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->initNativeAdList()V

    return-void
.end method

.method private getPreferences()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->preferences:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    return-object v0
.end method

.method private initNativeAdList()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->getPreferences()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->nativeAds:Lcom/fusepowered/sa/android/publish/a/g;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->getPreferences()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;-><init>(Lcom/fusepowered/sa/android/publish/model/AdDetails;Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;ILcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onNativeAdLoaded()V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "StartAppNativeAd"

    const-string v1, "Ad Loaded successfully"

    invoke-static {v0, v2, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;

    if-eqz v0, :cond_0

    const-string v0, "StartAppNativeAd"

    const-string v1, "Calling original RecienedAd callback"

    invoke-static {v0, v2, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a()Lcom/fusepowered/sa/android/publish/AdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    return-void
.end method

.method private setPreferences(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->preferences:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    return-void
.end method


# virtual methods
.method public getNativeAds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumberOfAds()I
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->getPreferences()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v0

    return v0
.end method

.method public loadAd()Z
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 4

    const/4 v3, 0x3

    const-string v0, "StartAppNativeAd"

    const-string v1, "Start loading StartAppNativeAd"

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;

    invoke-direct {v0, p0, p2}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;-><init>(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;

    const-string v0, "StartAppNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cofigurtaion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->preferences:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->setPreferences(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/g;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->getPreferences()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/a/g;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->nativeAds:Lcom/fusepowered/sa/android/publish/a/g;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->nativeAds:Lcom/fusepowered/sa/android/publish/a/g;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->adEventDelegate:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/sa/android/publish/a/g;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 0

    return-void
.end method

.method public onNativeAdDetailsLoaded(I)V
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    iget v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->totalObjectsLoaded:I

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->getPreferences()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->onNativeAdLoaded()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\n===== StartAppNativeAd =====\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->getNumberOfAds()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "===== End StartAppNativeAd ====="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
