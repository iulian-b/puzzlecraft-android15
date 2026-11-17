.class public Lcom/fusepowered/as/model/fallback/ProviderFallback;
.super Ljava/lang/Object;
.source "ProviderFallback.java"

# interfaces
.implements Lcom/fusepowered/as/model/fallback/Fallback;


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/fusepowered/as/model/fallback/ProviderFallback;->ad:Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    .line 14
    return-void
.end method


# virtual methods
.method public getAd()Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fusepowered/as/model/fallback/ProviderFallback;->ad:Lcom/fusepowered/as/model/ad/ThirdPartyProviderAd;

    return-object v0
.end method

.method public getAdType()Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method
