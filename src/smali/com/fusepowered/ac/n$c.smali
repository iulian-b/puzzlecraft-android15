.class Lcom/fusepowered/ac/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/fusepowered/ac/n$s;

.field c:Lcom/fusepowered/ac/n$q;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1345
    iget-object v1, p0, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$s;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return v0

    .line 1346
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$c;->c:Lcom/fusepowered/ac/n$q;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$q;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1352
    if-nez p1, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return v0

    .line 1354
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$c;->a:Z

    .line 1355
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$c;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1357
    :cond_2
    new-instance v2, Lcom/fusepowered/ac/n$s;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$s;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    .line 1358
    iget-object v2, p0, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    const-string v3, "pre_popup"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$s;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    new-instance v2, Lcom/fusepowered/ac/n$q;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$q;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$c;->c:Lcom/fusepowered/ac/n$q;

    .line 1361
    iget-object v2, p0, Lcom/fusepowered/ac/n$c;->c:Lcom/fusepowered/ac/n$q;

    const-string v3, "post_popup"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$q;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1363
    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1368
    iget-boolean v0, p0, Lcom/fusepowered/ac/n$c;->a:Z

    if-nez v0, :cond_0

    .line 1372
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$s;->b()V

    .line 1371
    iget-object v0, p0, Lcom/fusepowered/ac/n$c;->c:Lcom/fusepowered/ac/n$q;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$q;->b()V

    goto :goto_0
.end method
