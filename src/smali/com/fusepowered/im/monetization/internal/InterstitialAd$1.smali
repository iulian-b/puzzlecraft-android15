.class Lcom/fusepowered/im/monetization/internal/InterstitialAd$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/im/monetization/internal/InterstitialAd;->handleResponse(Lcom/fusepowered/im/monetization/internal/c;Lcom/fusepowered/im/commons/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/im/monetization/internal/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fusepowered/im/monetization/internal/InterstitialAd$1;->a:Lcom/fusepowered/im/monetization/internal/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fusepowered/im/monetization/internal/InterstitialAd$1;->a:Lcom/fusepowered/im/monetization/internal/InterstitialAd;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->a(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)V

    .line 142
    return-void
.end method
