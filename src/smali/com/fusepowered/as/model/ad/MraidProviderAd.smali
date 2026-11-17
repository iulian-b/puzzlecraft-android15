.class public final Lcom/fusepowered/as/model/ad/MraidProviderAd;
.super Lcom/fusepowered/as/model/ad/HTMLProviderAd;
.source "MraidProviderAd.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->MRAID:Lcom/fusepowered/as/model/ad/AdType;

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;-><init>(Ljava/lang/String;Lcom/fusepowered/as/model/ad/AdType;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fusepowered/as/model/ad/AdType;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;-><init>(Ljava/lang/String;Lcom/fusepowered/as/model/ad/AdType;)V

    .line 26
    return-void
.end method
