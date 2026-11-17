.class Lcom/fusepowered/ac/n$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1892
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$m;->a:Z

    if-nez v1, :cond_1

    .line 1894
    :cond_0
    :goto_0
    return v0

    .line 1893
    :cond_1
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1899
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1908
    :cond_0
    :goto_0
    return v0

    .line 1901
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$m;->a:Z

    .line 1902
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$m;->a:Z

    if-eqz v1, :cond_0

    .line 1904
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$m;->b:Ljava/lang/String;

    .line 1905
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$m;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1913
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    return-void
.end method
