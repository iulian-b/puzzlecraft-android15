.class Lcom/fusepowered/im/monetization/internal/BannerAd$1;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/im/monetization/internal/BannerAd;->handleResponse(Lcom/fusepowered/im/monetization/internal/c;Lcom/fusepowered/im/commons/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/im/monetization/internal/BannerAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/im/monetization/internal/BannerAd;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/fusepowered/im/monetization/internal/BannerAd$1;->a:Lcom/fusepowered/im/monetization/internal/BannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fusepowered/im/monetization/internal/BannerAd$1;->a:Lcom/fusepowered/im/monetization/internal/BannerAd;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/internal/BannerAd;->a(Lcom/fusepowered/im/monetization/internal/BannerAd;)V

    .line 281
    return-void
.end method
