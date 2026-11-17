.class Lcom/fusepowered/im/monetization/IMBanner$2;
.super Ljava/lang/Object;
.source "IMBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/im/monetization/IMBanner;->a(ILcom/fusepowered/im/monetization/internal/AdErrorCode;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/fusepowered/im/monetization/internal/AdErrorCode;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/fusepowered/im/monetization/IMBanner;


# direct methods
.method constructor <init>(Lcom/fusepowered/im/monetization/IMBanner;ILcom/fusepowered/im/monetization/internal/AdErrorCode;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    iput p2, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->a:I

    iput-object p3, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->b:Lcom/fusepowered/im/monetization/internal/AdErrorCode;

    iput-object p4, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    :try_start_0
    iget v0, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->a:I

    packed-switch v0, :pswitch_data_0

    .line 414
    const-string v0, "[InMobi]-[Monetization]"

    iget-object v1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->b:Lcom/fusepowered/im/monetization/internal/AdErrorCode;

    invoke-virtual {v1}, Lcom/fusepowered/im/monetization/internal/AdErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/im/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/IMBanner;->a(Lcom/fusepowered/im/monetization/IMBanner;)Lcom/fusepowered/im/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/fusepowered/im/monetization/IMBannerListener;->onBannerRequestSucceeded(Lcom/fusepowered/im/monetization/IMBanner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception giving callback to the publisher "

    invoke-static {v1, v2, v0}, Lcom/fusepowered/im/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 395
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/IMBanner;->a(Lcom/fusepowered/im/monetization/IMBanner;)Lcom/fusepowered/im/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    iget-object v2, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->b:Lcom/fusepowered/im/monetization/internal/AdErrorCode;

    invoke-static {v2}, Lcom/fusepowered/im/monetization/IMErrorCode;->a(Lcom/fusepowered/im/monetization/internal/AdErrorCode;)Lcom/fusepowered/im/monetization/IMErrorCode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/im/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/fusepowered/im/monetization/IMBanner;Lcom/fusepowered/im/monetization/IMErrorCode;)V

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v0, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/IMBanner;->a(Lcom/fusepowered/im/monetization/IMBanner;)Lcom/fusepowered/im/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/fusepowered/im/monetization/IMBannerListener;->onDismissBannerScreen(Lcom/fusepowered/im/monetization/IMBanner;)V

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v0, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/IMBanner;->a(Lcom/fusepowered/im/monetization/IMBanner;)Lcom/fusepowered/im/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/fusepowered/im/monetization/IMBannerListener;->onShowBannerScreen(Lcom/fusepowered/im/monetization/IMBanner;)V

    goto :goto_0

    .line 407
    :pswitch_4
    iget-object v0, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/IMBanner;->a(Lcom/fusepowered/im/monetization/IMBanner;)Lcom/fusepowered/im/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/fusepowered/im/monetization/IMBannerListener;->onLeaveApplication(Lcom/fusepowered/im/monetization/IMBanner;)V

    goto :goto_0

    .line 410
    :pswitch_5
    iget-object v0, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    invoke-static {v0}, Lcom/fusepowered/im/monetization/IMBanner;->a(Lcom/fusepowered/im/monetization/IMBanner;)Lcom/fusepowered/im/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->d:Lcom/fusepowered/im/monetization/IMBanner;

    iget-object v2, p0, Lcom/fusepowered/im/monetization/IMBanner$2;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/im/monetization/IMBannerListener;->onBannerInteraction(Lcom/fusepowered/im/monetization/IMBanner;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
