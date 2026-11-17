.class public Lcom/fusepowered/as/model/fallback/VASTFallback;
.super Ljava/lang/Object;
.source "VASTFallback.java"

# interfaces
.implements Lcom/fusepowered/as/model/fallback/ProxyFallback;


# instance fields
.field private fallBackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/fusepowered/as/model/fallback/VASTFallback;->fallBackUrl:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getAdType()Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->VAST:Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

.method public getFallBackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/as/model/fallback/VASTFallback;->fallBackUrl:Ljava/lang/String;

    return-object v0
.end method
