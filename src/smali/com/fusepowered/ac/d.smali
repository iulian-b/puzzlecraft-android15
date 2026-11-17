.class Lcom/fusepowered/ac/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/fusepowered/ac/c;

.field b:Lcom/fusepowered/ac/b;

.field c:Lcom/fusepowered/ac/o;

.field d:Lcom/fusepowered/ac/u;

.field e:Lcom/fusepowered/ac/v;

.field f:Lcom/fusepowered/ac/ADCStorage;

.field g:Lcom/fusepowered/ac/ah;

.field h:Lcom/fusepowered/ac/t;

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/j;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/j;",
            ">;"
        }
    .end annotation
.end field

.field volatile k:Z

.field l:Z

.field m:Z

.field n:Lcom/fusepowered/ac/ab$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/fusepowered/ac/c;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/c;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    .line 21
    new-instance v0, Lcom/fusepowered/ac/b;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/b;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    .line 22
    new-instance v0, Lcom/fusepowered/ac/o;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/o;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    .line 23
    new-instance v0, Lcom/fusepowered/ac/u;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/u;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    .line 24
    new-instance v0, Lcom/fusepowered/ac/v;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/v;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->e:Lcom/fusepowered/ac/v;

    .line 25
    new-instance v0, Lcom/fusepowered/ac/ADCStorage;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/ADCStorage;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->f:Lcom/fusepowered/ac/ADCStorage;

    .line 26
    new-instance v0, Lcom/fusepowered/ac/ah;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/ah;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->g:Lcom/fusepowered/ac/ah;

    .line 27
    new-instance v0, Lcom/fusepowered/ac/t;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/t;-><init>(Lcom/fusepowered/ac/d;)V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->i:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->j:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/fusepowered/ac/ab$a;

    invoke-direct {v0}, Lcom/fusepowered/ac/ab$a;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/d;->n:Lcom/fusepowered/ac/ab$a;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 238
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    :try_start_1
    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-boolean v0, p0, Lcom/fusepowered/ac/d;->l:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lcom/fusepowered/ac/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/fusepowered/ac/d;->l:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fusepowered/ac/d;->k:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/ac/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 60
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/d;->l:Z

    .line 61
    iget-object v0, p0, Lcom/fusepowered/ac/d;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v0, p0, Lcom/fusepowered/ac/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 63
    :goto_2
    iget-object v0, p0, Lcom/fusepowered/ac/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/fusepowered/ac/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/j;

    invoke-virtual {v0}, Lcom/fusepowered/ac/j;->a()V

    .line 63
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 73
    iput-boolean v2, p0, Lcom/fusepowered/ac/d;->l:Z

    .line 74
    iget-object v1, p0, Lcom/fusepowered/ac/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v1, p0, Lcom/fusepowered/ac/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 69
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/fusepowered/ac/d;->l:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(DLcom/fusepowered/ac/AdColonyAd;)V
    .locals 7

    .prologue
    .line 143
    new-instance v1, Lcom/fusepowered/ac/d$5;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/fusepowered/ac/d$5;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;DLcom/fusepowered/ac/AdColonyAd;)V

    .line 150
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 509
    invoke-static {p1}, Lcom/fusepowered/ac/a;->a(I)V

    .line 510
    return-void
.end method

.method declared-synchronized a(Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/fusepowered/ac/c;->n:D

    .line 120
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Tracking ad event - start"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 123
    iget-object v0, p1, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v1, v0, Lcom/fusepowered/ac/ag;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fusepowered/ac/ag;->d:I

    .line 125
    invoke-virtual {p1}, Lcom/fusepowered/ac/AdColonyAd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p1, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->k()V

    .line 128
    iget-object v0, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget-object v1, p1, Lcom/fusepowered/ac/AdColonyAd;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget v2, v2, Lcom/fusepowered/ac/n$a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/t;->a(Ljava/lang/String;I)V

    .line 130
    :cond_0
    new-instance v0, Lcom/fusepowered/ac/d$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/fusepowered/ac/d$4;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/fusepowered/ac/AdColonyInterstitialAd;)V
    .locals 2

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v1, p1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/fusepowered/ac/AdColonyV4VCAd;)V
    .locals 2

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v1, p1, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/fusepowered/ac/AdColonyVideoAd;)V
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v1, p1, Lcom/fusepowered/ac/AdColonyVideoAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/fusepowered/ac/j;)V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/fusepowered/ac/d;->i:Ljava/util/ArrayList;

    monitor-enter v1

    .line 44
    :try_start_0
    invoke-static {}, Lcom/fusepowered/ac/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-boolean v0, p0, Lcom/fusepowered/ac/d;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/ac/d;->g()V

    .line 48
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ac/t;->b(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/fusepowered/ac/d$7;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/fusepowered/ac/d$7;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 6

    .prologue
    .line 220
    new-instance v0, Lcom/fusepowered/ac/d$8;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/ac/d$8;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 227
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/fusepowered/ac/a;->n:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/d;->a(I)V

    .line 461
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "==== Configuring AdColony "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v1, v1, Lcom/fusepowered/ac/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    const-string v1, " ===="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 463
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "package name: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-static {}, Lcom/fusepowered/ac/ab;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 465
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iput-object p2, v0, Lcom/fusepowered/ac/c;->j:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iput-object p3, v0, Lcom/fusepowered/ac/c;->k:[Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/fusepowered/ac/d;->n:Lcom/fusepowered/ac/ab$a;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ab$a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :goto_0
    monitor-exit p0

    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 472
    :try_start_1
    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/fusepowered/ac/AdColonyAd;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 159
    monitor-enter p0

    if-nez p2, :cond_1

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :try_start_0
    invoke-virtual {p0, v4, v5, p2}, Lcom/fusepowered/ac/d;->a(DLcom/fusepowered/ac/AdColonyAd;)V

    .line 162
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/fusepowered/ac/AdColonyAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p2, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->k()V

    .line 167
    iget-object v0, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget-object v3, p2, Lcom/fusepowered/ac/AdColonyAd;->g:Ljava/lang/String;

    iget-object v4, p2, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget v4, v4, Lcom/fusepowered/ac/n$a;->d:I

    invoke-virtual {v0, v3, v4}, Lcom/fusepowered/ac/t;->a(Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    check-cast v0, Lcom/fusepowered/ac/AdColonyV4VCAd;

    .line 170
    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->getRewardAmount()I

    move-result v4

    .line 175
    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->getViewsPerReward()I

    move-result v6

    .line 176
    if-le v6, v1, :cond_2

    .line 178
    iget-object v5, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/fusepowered/ac/t;->c(Ljava/lang/String;)I

    move-result v5

    .line 179
    add-int/lit8 v5, v5, 0x1

    .line 180
    if-lt v5, v6, :cond_4

    .line 182
    :goto_1
    iget-object v5, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/fusepowered/ac/t;->b(Ljava/lang/String;I)V

    .line 185
    :cond_2
    if-eqz v1, :cond_0

    .line 187
    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyV4VCAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-boolean v0, v0, Lcom/fusepowered/ac/n$aa;->e:Z

    if-eqz v0, :cond_3

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/fusepowered/ac/d;->a(ZLjava/lang/String;I)V

    .line 192
    :cond_3
    new-instance v0, Lcom/fusepowered/ac/d$6;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/ac/d$6;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;Ljava/lang/String;ILcom/fusepowered/ac/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v1, v2

    move v2, v5

    .line 181
    goto :goto_1
.end method

.method declared-synchronized a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/fusepowered/ac/a;->L:Lcom/fusepowered/ac/a$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fusepowered/ac/a$b;->a(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/fusepowered/ac/a;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 310
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v1, p1, p2}, Lcom/fusepowered/ac/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v1, v1, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v1, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v1

    .line 312
    invoke-virtual {v1, p3}, Lcom/fusepowered/ac/n$y;->b(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 316
    :try_start_2
    invoke-static {v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 251
    :goto_0
    monitor-exit p0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    :try_start_1
    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/d;->k:Z

    .line 84
    new-instance v0, Lcom/fusepowered/ac/d$1;

    invoke-direct {v0, p0, p0}, Lcom/fusepowered/ac/d$1;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;)V

    .line 91
    return-void
.end method

.method declared-synchronized b(Lcom/fusepowered/ac/AdColonyAd;)Z
    .locals 3

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->l:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    const/4 v1, 0x3

    iput v1, v0, Lcom/fusepowered/ac/AdColonyAd;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    const/4 v0, 0x0

    .line 452
    :goto_0
    monitor-exit p0

    return v0

    .line 437
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 439
    invoke-static {}, Lcom/fusepowered/ac/ADCVideo;->a()V

    .line 440
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v0, :cond_1

    .line 442
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Launching AdColonyOverlay"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 443
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fusepowered/ac/ACOActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 452
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 449
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fusepowered/ac/ACFActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/fusepowered/ac/AdColonyInterstitialAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 379
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    .line 381
    iget-object v1, p1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    .line 383
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/d;->f(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 394
    :goto_0
    monitor-exit p0

    return v0

    .line 385
    :cond_0
    :try_start_1
    sget-object v2, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v3, "Showing ad for zone "

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 387
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyInterstitialAd;)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/d;->b(Lcom/fusepowered/ac/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    .line 393
    :try_start_2
    invoke-static {v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/fusepowered/ac/AdColonyV4VCAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 412
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    .line 413
    iget-object v1, p1, Lcom/fusepowered/ac/AdColonyV4VCAd;->g:Ljava/lang/String;

    .line 415
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/d;->g(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 425
    :goto_0
    monitor-exit p0

    return v0

    .line 417
    :cond_0
    :try_start_1
    sget-object v2, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v3, "Showing v4vc for zone "

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 419
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyV4VCAd;)V

    .line 420
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/d;->b(Lcom/fusepowered/ac/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 424
    :try_start_2
    invoke-static {v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/fusepowered/ac/AdColonyVideoAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 356
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    .line 358
    iget-object v1, p1, Lcom/fusepowered/ac/AdColonyVideoAd;->g:Ljava/lang/String;

    .line 360
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/d;->f(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 371
    :goto_0
    monitor-exit p0

    return v0

    .line 362
    :cond_0
    :try_start_1
    sget-object v2, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v3, "Showing ad for zone "

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 364
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyVideoAd;)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/d;->b(Lcom/fusepowered/ac/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 370
    :try_start_2
    invoke-static {v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/fusepowered/ac/a;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 331
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v1, p1, p2}, Lcom/fusepowered/ac/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v1, v1, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v1, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v1

    .line 333
    invoke-virtual {v1, p3}, Lcom/fusepowered/ac/n$y;->c(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 337
    :try_start_2
    invoke-static {v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/d;->k:Z

    .line 97
    new-instance v0, Lcom/fusepowered/ac/d$2;

    invoke-direct {v0, p0, p0}, Lcom/fusepowered/ac/d$2;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;)V

    .line 104
    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 264
    :goto_0
    monitor-exit p0

    return v0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    :try_start_1
    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 278
    :goto_0
    monitor-exit p0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    :try_start_1
    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/fusepowered/ac/d$3;

    invoke-direct {v0, p0, p0}, Lcom/fusepowered/ac/d$3;-><init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;)V

    .line 115
    return-void
.end method

.method declared-synchronized e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/t;->c(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->d()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()V
    .locals 4

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/fusepowered/ac/a;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    monitor-exit p0

    return-void

    .line 482
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/fusepowered/ac/d;->a()V

    .line 484
    sget-boolean v0, Lcom/fusepowered/ac/a;->p:Z

    if-nez v0, :cond_3

    .line 486
    invoke-static {}, Lcom/fusepowered/ac/g;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/d;->n:Lcom/fusepowered/ac/ab$a;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ab$a;->b()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    invoke-virtual {v0}, Lcom/fusepowered/ac/c;->a()V

    .line 489
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->p:Z

    .line 491
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->r:Z

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->f()V

    .line 495
    iget-object v0, p0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    invoke-virtual {v0}, Lcom/fusepowered/ac/o;->e()V

    .line 496
    iget-object v0, p0, Lcom/fusepowered/ac/d;->e:Lcom/fusepowered/ac/v;

    invoke-virtual {v0}, Lcom/fusepowered/ac/v;->b()V

    .line 497
    iget-object v0, p0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    invoke-virtual {v0}, Lcom/fusepowered/ac/u;->d()V

    .line 498
    iget-object v0, p0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v0}, Lcom/fusepowered/ac/t;->d()V

    .line 499
    iget-object v0, p0, Lcom/fusepowered/ac/d;->g:Lcom/fusepowered/ac/ah;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ah;->d()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 503
    :try_start_2
    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 323
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/fusepowered/ac/d;->b(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized h(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;
    .locals 1

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
