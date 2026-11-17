.class public Lcom/fusepowered/ac/AdColonyVideoAd;
.super Lcom/fusepowered/ac/AdColonyInterstitialAd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fusepowered/ac/AdColonyInterstitialAd;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/fusepowered/ac/AdColonyInterstitialAd;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic withListener(Lcom/fusepowered/ac/AdColonyAdListener;)Lcom/fusepowered/ac/AdColonyInterstitialAd;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/AdColonyVideoAd;->withListener(Lcom/fusepowered/ac/AdColonyAdListener;)Lcom/fusepowered/ac/AdColonyVideoAd;

    move-result-object v0

    return-object v0
.end method

.method public withListener(Lcom/fusepowered/ac/AdColonyAdListener;)Lcom/fusepowered/ac/AdColonyVideoAd;
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/ac/AdColonyAdListener;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyVideoAd;->s:Lcom/fusepowered/ac/AdColonyAdListener;

    .line 18
    return-object p0
.end method
