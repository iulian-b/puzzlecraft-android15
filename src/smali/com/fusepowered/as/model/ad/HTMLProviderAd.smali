.class public Lcom/fusepowered/as/model/ad/HTMLProviderAd;
.super Ljava/lang/Object;
.source "HTMLProviderAd.java"

# interfaces
.implements Lcom/fusepowered/as/model/ad/ProviderAd;


# instance fields
.field private adType:Lcom/fusepowered/as/model/ad/AdType;

.field private html:Ljava/lang/String;

.field private providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->HTML:Lcom/fusepowered/as/model/ad/AdType;

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;-><init>(Ljava/lang/String;Lcom/fusepowered/as/model/ad/AdType;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fusepowered/as/model/ad/AdType;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "ASAerServ"

    iput-object v0, p0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->providerName:Ljava/lang/String;

    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot instantiate HTMLAd.  Invalid html"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    if-nez p2, :cond_2

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_2
    iput-object p1, p0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->html:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->adType:Lcom/fusepowered/as/model/ad/AdType;

    .line 23
    return-void
.end method


# virtual methods
.method public getAdType()Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->adType:Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowAdCommandRequiredOnPreload()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->providerName:Ljava/lang/String;

    return-object v0
.end method
