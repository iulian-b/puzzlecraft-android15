.class Lcom/fusepowered/ac/n$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:D

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Lcom/fusepowered/ac/n$f;

.field l:Lcom/fusepowered/ac/n$u;

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/fusepowered/ac/n$ab;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/n$e;->e:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Caching media"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 86
    iget-boolean v0, p0, Lcom/fusepowered/ac/n$e;->a:Z

    if-nez v0, :cond_1

    .line 89
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$ab;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/n$ab;->a(I)Lcom/fusepowered/ac/n$y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$y;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$e;->a:Z

    .line 44
    const-string v1, "log_screen_overlay"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$e;->b:Z

    .line 45
    const-string v1, "last_country"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->c:Ljava/lang/String;

    .line 46
    const-string v1, "last_ip"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->d:Ljava/lang/String;

    .line 48
    const-string v1, "collect_iap_enabled"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$e;->f:Z

    .line 49
    const-string v1, "media_pool_size"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ac/n$e;->g:D

    .line 50
    const-string v1, "log_level"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->h:Ljava/lang/String;

    .line 52
    const-string v1, "view_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    .line 53
    const-string v1, "cache_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    .line 55
    const-string v1, "hardware_acceleration_disabled"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$e;->e:Z

    .line 57
    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    :cond_2
    const-string v1, "all"

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    :cond_4
    const-string v1, "all"

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    .line 66
    :cond_5
    new-instance v1, Lcom/fusepowered/ac/n$f;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$f;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->k:Lcom/fusepowered/ac/n$f;

    .line 67
    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->k:Lcom/fusepowered/ac/n$f;

    const-string v2, "tracking"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$f;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/fusepowered/ac/n$u;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$u;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->l:Lcom/fusepowered/ac/n$u;

    .line 70
    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->l:Lcom/fusepowered/ac/n$u;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$u;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "console_messages"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->m:Ljava/util/ArrayList;

    .line 74
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "Parsing zones"

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 75
    new-instance v1, Lcom/fusepowered/ac/n$ab;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$ab;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    .line 76
    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    const-string v2, "zones"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->c(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$ab;->a(Lcom/fusepowered/ac/ADCData$c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Finished parsing app info"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 80
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fusepowered/ac/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$e;->a:Z

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v1, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1, p2, p3}, Lcom/fusepowered/ac/n$y;->a(ZZ)Z

    move-result v0

    goto :goto_0
.end method
