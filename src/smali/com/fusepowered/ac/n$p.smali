.class Lcom/fusepowered/ac/n$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1540
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$p;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1543
    :cond_0
    :goto_0
    return v0

    .line 1541
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$p;->l:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/fusepowered/ac/n$p;->m:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1548
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$p;->a:I

    .line 1549
    const-string v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->b:Ljava/lang/String;

    .line 1550
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$p;->c:I

    .line 1551
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$p;->d:I

    .line 1552
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->e:Ljava/lang/String;

    .line 1553
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->f:Ljava/lang/String;

    .line 1554
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->g:Ljava/lang/String;

    .line 1555
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->h:Ljava/lang/String;

    .line 1556
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->i:Ljava/lang/String;

    .line 1557
    const-string v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->j:Ljava/lang/String;

    .line 1558
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->k:Ljava/lang/String;

    .line 1560
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$p;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    new-instance v1, Lcom/fusepowered/ac/n$j;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$j;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->l:Lcom/fusepowered/ac/n$j;

    .line 1563
    iget-object v1, p0, Lcom/fusepowered/ac/n$p;->l:Lcom/fusepowered/ac/n$j;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$j;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return v0

    .line 1565
    :cond_1
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$p;->m:Lcom/fusepowered/ac/n$g;

    .line 1566
    iget-object v1, p0, Lcom/fusepowered/ac/n$p;->m:Lcom/fusepowered/ac/n$g;

    const-string v2, "option_done"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1568
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1573
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$p;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/fusepowered/ac/n$p;->l:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$j;->b()V

    .line 1575
    iget-object v0, p0, Lcom/fusepowered/ac/n$p;->m:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1576
    return-void
.end method
