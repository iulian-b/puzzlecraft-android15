.class Lcom/fusepowered/ac/n$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field a:Z

.field b:D

.field c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Lcom/fusepowered/ac/n$m;

.field g:Ljava/lang/String;

.field h:Lcom/fusepowered/ac/n$j;

.field i:Lcom/fusepowered/ac/n$g;

.field j:Lcom/fusepowered/ac/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1827
    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1829
    const/16 v0, 0x8

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 1830
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad not ready due to no network connection."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1837
    :cond_0
    :goto_0
    return v0

    .line 1832
    :cond_1
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$i;->a:Z

    if-eqz v1, :cond_0

    .line 1833
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->f:Lcom/fusepowered/ac/n$m;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->h:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1835
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->i:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1836
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->j:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1837
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1842
    if-nez p1, :cond_1

    .line 1869
    :cond_0
    :goto_0
    return v0

    .line 1844
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$i;->a:Z

    .line 1846
    const-string v1, "load_timeout"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ac/n$i;->b:D

    .line 1847
    const-string v1, "load_timeout_enabled"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$i;->c:Z

    .line 1848
    const-string v1, "load_spinner_enabled"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$i;->d:Z

    .line 1849
    const-string v1, "background_color"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$i;->e:Ljava/lang/String;

    .line 1851
    const-string v1, "html5_tag"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$i;->g:Ljava/lang/String;

    .line 1854
    new-instance v1, Lcom/fusepowered/ac/n$m;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$m;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$i;->f:Lcom/fusepowered/ac/n$m;

    .line 1855
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->f:Lcom/fusepowered/ac/n$m;

    const-string v2, "mraid_js"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$m;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1858
    new-instance v1, Lcom/fusepowered/ac/n$j;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$j;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$i;->h:Lcom/fusepowered/ac/n$j;

    .line 1859
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->h:Lcom/fusepowered/ac/n$j;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$j;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1862
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$i;->i:Lcom/fusepowered/ac/n$g;

    .line 1863
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->i:Lcom/fusepowered/ac/n$g;

    const-string v2, "replay"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1866
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$i;->j:Lcom/fusepowered/ac/n$g;

    .line 1867
    iget-object v1, p0, Lcom/fusepowered/ac/n$i;->j:Lcom/fusepowered/ac/n$g;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1869
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1874
    iget-boolean v0, p0, Lcom/fusepowered/ac/n$i;->a:Z

    if-nez v0, :cond_1

    .line 1879
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->f:Lcom/fusepowered/ac/n$m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->f:Lcom/fusepowered/ac/n$m;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$m;->b()V

    .line 1876
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->h:Lcom/fusepowered/ac/n$j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->h:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$j;->b()V

    .line 1877
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->i:Lcom/fusepowered/ac/n$g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->i:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1878
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->j:Lcom/fusepowered/ac/n$g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/n$i;->j:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    goto :goto_0
.end method
