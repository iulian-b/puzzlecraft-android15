.class public Lcom/fusepowered/as/model/fallback/HTMLFallback;
.super Ljava/lang/Object;
.source "HTMLFallback.java"

# interfaces
.implements Lcom/fusepowered/as/model/fallback/ProxyFallback;


# instance fields
.field private fallBackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/fusepowered/as/model/fallback/HTMLFallback;->fallBackUrl:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getAdType()Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->HTML:Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

.method public getFallBackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/as/model/fallback/HTMLFallback;->fallBackUrl:Ljava/lang/String;

    return-object v0
.end method
