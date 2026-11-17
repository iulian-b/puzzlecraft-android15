.class Lcom/fusepowered/ac/ae$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/ae;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/ae;)V
    .locals 0

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1423
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae$b;->a()V

    .line 1424
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 1428
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/fusepowered/ac/ae$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1429
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1433
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae$b;->a()V

    .line 1435
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_0

    .line 1438
    monitor-enter p0

    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->Z:Lcom/fusepowered/ac/ab$b;

    if-eqz v0, :cond_3

    .line 1442
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->Z:Lcom/fusepowered/ac/ab$b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ab$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1444
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fusepowered/ac/ae;->Z:Lcom/fusepowered/ac/ab$b;

    .line 1445
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fusepowered/ac/ae;->t:I

    .line 1446
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->a()V

    .line 1447
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/ADCVideo;->n:Z

    .line 1448
    iget-object v0, p0, Lcom/fusepowered/ac/ae$b;->a:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->f()V

    .line 1451
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
