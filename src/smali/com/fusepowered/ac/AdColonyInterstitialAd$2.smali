.class Lcom/fusepowered/ac/AdColonyInterstitialAd$2;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/AdColonyInterstitialAd;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/AdColonyInterstitialAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/AdColonyInterstitialAd;Lcom/fusepowered/ac/d;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd$2;->a:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd$2;->o:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd$2;->a:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyInterstitialAd$2;->a:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 106
    return-void
.end method
