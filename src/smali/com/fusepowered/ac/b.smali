.class Lcom/fusepowered/ac/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fusepowered/ac/ADCDownload$Listener;


# instance fields
.field a:Lcom/fusepowered/ac/d;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:D

.field h:Landroid/os/Handler;

.field i:Ljava/lang/Runnable;

.field j:Lcom/fusepowered/ac/n$e;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/b;->e:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/b;->f:Z

    .line 22
    new-instance v0, Lcom/fusepowered/ac/n$e;

    invoke-direct {v0}, Lcom/fusepowered/ac/n$e;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    .line 28
    iput-object p1, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/b;->h:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/fusepowered/ac/b$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/b$1;-><init>(Lcom/fusepowered/ac/b;)V

    iput-object v0, p0, Lcom/fusepowered/ac/b;->i:Ljava/lang/Runnable;

    .line 41
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    const-string v3, "app"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$e;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "Finished parsing manifest"

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 292
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->h:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v2, "Enabling debug logging."

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 295
    invoke-static {v1}, Lcom/fusepowered/ac/a;->a(I)V

    :goto_1
    move v0, v1

    .line 302
    goto :goto_0

    .line 299
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(I)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/ac/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$ab;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2, v0}, Lcom/fusepowered/ac/n$ab;->a(I)Lcom/fusepowered/ac/n$y;

    move-result-object v2

    .line 115
    invoke-virtual {v2, p2}, Lcom/fusepowered/ac/n$y;->c(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 117
    :cond_0
    return v1

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "Attempting to load backup manifest from file."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 51
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "manifest.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/b;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/b;->b:Z

    .line 58
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$e;->a()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v1, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v2, "Invalid manifest loaded."

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 63
    invoke-virtual {v0}, Lcom/fusepowered/ac/f;->c()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/b;->b:Z

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/ac/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/ac/b;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/ac/b;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ads are not ready to be played, as they are still downloading."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    invoke-virtual {v0, p1, v2, v1}, Lcom/fusepowered/ac/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/fusepowered/ac/b;->b:Z

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-object v1

    .line 74
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$ab;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/n$ab;->a(I)Lcom/fusepowered/ac/n$y;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/fusepowered/ac/n$y;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v0, v2, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {v2}, Lcom/fusepowered/ac/n$y;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 84
    goto :goto_0
.end method

.method c(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 133
    iget-boolean v1, p0, Lcom/fusepowered/ac/b;->b:Z

    if-nez v1, :cond_0

    .line 135
    :goto_0
    return v0

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    invoke-virtual {v1, p1, v2, v0}, Lcom/fusepowered/ac/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    invoke-virtual {v1, p1, v0, v2}, Lcom/fusepowered/ac/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/fusepowered/ac/b;->b:Z

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-object v1

    .line 92
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$ab;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/n$ab;->a(I)Lcom/fusepowered/ac/n$y;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/fusepowered/ac/n$y;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iget-object v0, v2, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {v2}, Lcom/fusepowered/ac/n$y;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 102
    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/fusepowered/ac/b;->e:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/fusepowered/ac/a;->z:Z

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    iput-boolean v1, p0, Lcom/fusepowered/ac/b;->e:Z

    .line 143
    iput-boolean v2, p0, Lcom/fusepowered/ac/b;->c:Z

    .line 144
    iput-boolean v1, p0, Lcom/fusepowered/ac/b;->f:Z

    .line 145
    iget-object v0, p0, Lcom/fusepowered/ac/b;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/b;->i:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    iput-boolean v2, p0, Lcom/fusepowered/ac/b;->f:Z

    goto :goto_0
.end method

.method f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-static {}, Lcom/fusepowered/ac/ab;->c()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/fusepowered/ac/b;->g:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iput-boolean v5, p0, Lcom/fusepowered/ac/b;->c:Z

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/ac/b;->c:Z

    if-eqz v0, :cond_1

    .line 159
    iput-boolean v4, p0, Lcom/fusepowered/ac/b;->c:Z

    .line 160
    invoke-static {}, Lcom/fusepowered/ac/g;->c()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 162
    invoke-static {}, Lcom/fusepowered/ac/ab;->c()D

    move-result-wide v0

    const-wide v2, 0x4082c00000000000L    # 600.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/fusepowered/ac/b;->g:D

    .line 163
    invoke-virtual {p0}, Lcom/fusepowered/ac/b;->g()V

    .line 166
    :cond_1
    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    sget-boolean v0, Lcom/fusepowered/ac/a;->C:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/fusepowered/ac/a;->h()V

    .line 169
    :cond_2
    sput-boolean v4, Lcom/fusepowered/ac/a;->C:Z

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_3
    sget-boolean v0, Lcom/fusepowered/ac/a;->C:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/fusepowered/ac/a;->h()V

    .line 174
    :cond_4
    sput-boolean v5, Lcom/fusepowered/ac/a;->C:Z

    goto :goto_0
.end method

.method g()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 180
    sput-boolean v0, Lcom/fusepowered/ac/a;->r:Z

    .line 181
    sget-object v2, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v3, "Refreshing manifest"

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 182
    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    sget-object v1, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v2, "Not connected to network."

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 185
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "attempted_load:"

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/ac/b;->d:Z

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Z)Lcom/fusepowered/ac/l;

    move-result-object v1

    const-string v2, " is_configured:"

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/ac/b;->b:Z

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Z)Lcom/fusepowered/ac/l;

    .line 186
    iget-boolean v1, p0, Lcom/fusepowered/ac/b;->d:Z

    if-nez v1, :cond_0

    .line 188
    iput-boolean v0, p0, Lcom/fusepowered/ac/b;->d:Z

    .line 189
    iget-boolean v0, p0, Lcom/fusepowered/ac/b;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ac/b;->b()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v3, Lcom/fusepowered/ac/z;

    invoke-direct {v3}, Lcom/fusepowered/ac/z;-><init>()V

    .line 195
    iget-object v2, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    sget-object v2, Lcom/fusepowered/ac/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 196
    const-string v2, "?app_id="

    invoke-virtual {v3, v2}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v2, v2, Lcom/fusepowered/ac/c;->j:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 199
    const-string v2, "&zones="

    invoke-virtual {v3, v2}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v2, v2, Lcom/fusepowered/ac/c;->k:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v4, v2, Lcom/fusepowered/ac/c;->k:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 205
    if-eqz v0, :cond_2

    move v0, v1

    .line 207
    :goto_2
    invoke-virtual {v3, v6}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_2
    const-string v7, ","

    invoke-virtual {v3, v7}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 213
    const-string v0, "&carrier="

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 215
    const-string v0, "&network_type="

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/fusepowered/ac/q;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "wifi"

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 219
    :goto_3
    const-string v0, "&custom_id="

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "Downloading ad manifest from"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 229
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    invoke-virtual {v0, v3}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 231
    new-instance v0, Lcom/fusepowered/ac/ADCDownload;

    iget-object v1, p0, Lcom/fusepowered/ac/b;->a:Lcom/fusepowered/ac/d;

    invoke-virtual {v3}, Lcom/fusepowered/ac/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/fusepowered/ac/ADCDownload;-><init>(Lcom/fusepowered/ac/d;Ljava/lang/String;Lcom/fusepowered/ac/ADCDownload$Listener;)V

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCDownload;->b()V

    goto/16 :goto_0

    .line 217
    :cond_4
    invoke-static {}, Lcom/fusepowered/ac/q;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cell"

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 218
    :cond_5
    const-string v0, "none"

    invoke-virtual {v3, v0}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public on_download_finished(Lcom/fusepowered/ac/ADCDownload;)V
    .locals 3
    .param p1, "download"    # Lcom/fusepowered/ac/ADCDownload;

    .prologue
    const/4 v2, 0x1

    .line 236
    sput-boolean v2, Lcom/fusepowered/ac/a;->r:Z

    .line 237
    iget-boolean v0, p1, Lcom/fusepowered/ac/ADCDownload;->i:Z

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Finished downloading:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 240
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    iget-object v1, p1, Lcom/fusepowered/ac/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 249
    iget-object v0, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/ac/k;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v0

    .line 251
    if-nez v0, :cond_1

    .line 253
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Invalid JSON in manifest.  Raw data:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 254
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    iget-object v1, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 283
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Error downloading:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 245
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    iget-object v1, p1, Lcom/fusepowered/ac/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/b;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "Ad manifest updated."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 262
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "manifest.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/f;->a(Ljava/lang/String;)V

    .line 263
    iput-boolean v2, p0, Lcom/fusepowered/ac/b;->b:Z

    .line 271
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$e;->a()V

    .line 273
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    .line 282
    :cond_5
    invoke-static {}, Lcom/fusepowered/ac/a;->h()V

    goto :goto_0

    .line 267
    :cond_6
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "Invalid manifest."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0
.end method
