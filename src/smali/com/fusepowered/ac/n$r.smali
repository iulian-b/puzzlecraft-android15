.class Lcom/fusepowered/ac/n$r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/fusepowered/ac/n$j;

.field m:Lcom/fusepowered/ac/n$g;

.field n:Lcom/fusepowered/ac/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1436
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$r;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v0

    .line 1437
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$r;->l:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    iget-object v1, p0, Lcom/fusepowered/ac/n$r;->m:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1444
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$r;->a:I

    .line 1445
    const-string v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->b:Ljava/lang/String;

    .line 1446
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$r;->c:I

    .line 1447
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$r;->d:I

    .line 1448
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->e:Ljava/lang/String;

    .line 1449
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->f:Ljava/lang/String;

    .line 1450
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->g:Ljava/lang/String;

    .line 1451
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->h:Ljava/lang/String;

    .line 1452
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->i:Ljava/lang/String;

    .line 1453
    const-string v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->j:Ljava/lang/String;

    .line 1454
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->k:Ljava/lang/String;

    .line 1456
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$r;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    new-instance v1, Lcom/fusepowered/ac/n$j;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$j;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->l:Lcom/fusepowered/ac/n$j;

    .line 1459
    iget-object v1, p0, Lcom/fusepowered/ac/n$r;->l:Lcom/fusepowered/ac/n$j;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$j;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return v0

    .line 1461
    :cond_1
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->m:Lcom/fusepowered/ac/n$g;

    .line 1462
    iget-object v1, p0, Lcom/fusepowered/ac/n$r;->m:Lcom/fusepowered/ac/n$g;

    const-string v2, "option_yes"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$r;->n:Lcom/fusepowered/ac/n$g;

    .line 1465
    iget-object v1, p0, Lcom/fusepowered/ac/n$r;->n:Lcom/fusepowered/ac/n$g;

    const-string v2, "option_no"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1472
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$r;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$r;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/fusepowered/ac/n$r;->l:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$j;->b()V

    .line 1474
    iget-object v0, p0, Lcom/fusepowered/ac/n$r;->m:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1475
    iget-object v0, p0, Lcom/fusepowered/ac/n$r;->n:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1476
    return-void
.end method
