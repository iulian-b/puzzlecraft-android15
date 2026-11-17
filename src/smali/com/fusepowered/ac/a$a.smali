.class Lcom/fusepowered/ac/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/fusepowered/ac/AdColonyAd;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 1

    .prologue
    .line 307
    if-nez p1, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iput-object v0, p0, Lcom/fusepowered/ac/a$a;->a:Lcom/fusepowered/ac/AdColonyAd;

    .line 309
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/a$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/ac/a$a;->a:Lcom/fusepowered/ac/AdColonyAd;

    goto :goto_0
.end method

.method public b(Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 1

    .prologue
    .line 314
    if-nez p1, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iput-object v0, p0, Lcom/fusepowered/ac/a$a;->a:Lcom/fusepowered/ac/AdColonyAd;

    .line 316
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/a$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 317
    return-void

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/ac/a$a;->a:Lcom/fusepowered/ac/AdColonyAd;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 325
    :pswitch_0
    const-string v0, "skip"

    iget-object v1, p0, Lcom/fusepowered/ac/a$a;->a:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 326
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    const/4 v1, 0x1

    iput v1, v0, Lcom/fusepowered/ac/AdColonyAd;->f:I

    .line 329
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyAd;->a()V

    goto :goto_0

    .line 335
    :pswitch_1
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 336
    sget-object v1, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v1, v1, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v1, :cond_1

    const-string v1, "html5_endcard_loading_started"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-boolean v2, v2, Lcom/fusepowered/ac/ADCVideo;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 337
    :cond_1
    sget-object v1, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v1, v1, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v1, :cond_2

    const-string v1, "html5_endcard_loading_finished"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-boolean v2, v2, Lcom/fusepowered/ac/ADCVideo;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 338
    :cond_2
    sget-object v1, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v1, v1, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v1, :cond_3

    const-string v1, "html5_endcard_loading_time"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-wide v2, v2, Lcom/fusepowered/ac/ADCVideo;->p:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 339
    :cond_3
    sget-object v1, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v1, v1, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v1, :cond_4

    const-string v1, "html5_endcard_loading_timeout"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-boolean v2, v2, Lcom/fusepowered/ac/ADCVideo;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 340
    :cond_4
    sget-object v1, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-wide v2, v1, Lcom/fusepowered/ac/ADCVideo;->q:D

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    const-string v1, "endcard_time_spent"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-wide v2, v2, Lcom/fusepowered/ac/ADCVideo;->q:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 341
    :cond_5
    const-string v1, "endcard_dissolved"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-boolean v2, v2, Lcom/fusepowered/ac/ADCVideo;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 342
    const-string v1, "replay"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v2, Lcom/fusepowered/ac/ADCVideo;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 343
    const-string v1, "reward"

    sget-object v2, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    iget-boolean v2, v2, Lcom/fusepowered/ac/ADCVideo;->o:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 354
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/fusepowered/ac/a$a;->a:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 355
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->e()V

    .line 356
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyAd;->a()V

    goto/16 :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
