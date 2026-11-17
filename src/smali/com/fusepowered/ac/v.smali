.class Lcom/fusepowered/ac/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/fusepowered/ac/d;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:D

.field g:D

.field h:D

.field i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/fusepowered/ac/v;->d:Z

    .line 23
    iput-boolean v0, p0, Lcom/fusepowered/ac/v;->e:Z

    .line 29
    const-string v0, "uuid"

    iput-object v0, p0, Lcom/fusepowered/ac/v;->i:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/fusepowered/ac/v;->a:Lcom/fusepowered/ac/d;

    .line 35
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method a(D)V
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Submitting session duration "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ac/l;->b(D)Lcom/fusepowered/ac/l;

    .line 165
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 166
    const-string v1, "session_length"

    double-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 167
    iget-object v1, p0, Lcom/fusepowered/ac/v;->a:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v2, "session_end"

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;)V

    .line 168
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/fusepowered/ac/v;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-boolean v0, v0, Lcom/fusepowered/ac/b;->b:Z

    if-eqz v0, :cond_1

    .line 45
    iget-boolean v0, p0, Lcom/fusepowered/ac/v;->d:Z

    if-eqz v0, :cond_0

    .line 47
    iput-boolean v2, p0, Lcom/fusepowered/ac/v;->d:Z

    .line 48
    iget-object v0, p0, Lcom/fusepowered/ac/v;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "install"

    invoke-virtual {v0, v1, v3}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;)V

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/ac/v;->e:Z

    if-eqz v0, :cond_1

    .line 53
    iput-boolean v2, p0, Lcom/fusepowered/ac/v;->e:Z

    .line 54
    iget-object v0, p0, Lcom/fusepowered/ac/v;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "session_start"

    invoke-virtual {v0, v1, v3}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;)V

    .line 57
    :cond_1
    return-void
.end method

.method c()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 61
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "AdColony resuming"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 62
    sput-boolean v2, Lcom/fusepowered/ac/a;->r:Z

    .line 64
    iget-boolean v0, p0, Lcom/fusepowered/ac/v;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v1, "AdColony.onResume() called multiple times in succession."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 65
    :cond_0
    iput-boolean v2, p0, Lcom/fusepowered/ac/v;->b:Z

    .line 66
    invoke-virtual {p0}, Lcom/fusepowered/ac/v;->g()V

    .line 68
    invoke-static {}, Lcom/fusepowered/ac/ab;->c()D

    move-result-wide v0

    .line 69
    iget-boolean v2, p0, Lcom/fusepowered/ac/v;->c:Z

    if-eqz v2, :cond_2

    .line 71
    iget-wide v2, p0, Lcom/fusepowered/ac/v;->g:D

    sub-double v2, v0, v2

    iget-object v4, p0, Lcom/fusepowered/ac/v;->a:Lcom/fusepowered/ac/d;

    iget-object v4, v4, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget v4, v4, Lcom/fusepowered/ac/c;->d:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 73
    iget-wide v2, p0, Lcom/fusepowered/ac/v;->h:D

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/ac/v;->a(D)V

    .line 74
    iput-wide v0, p0, Lcom/fusepowered/ac/v;->f:D

    .line 75
    invoke-virtual {p0}, Lcom/fusepowered/ac/v;->h()V

    .line 83
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/v;->c:Z

    .line 84
    invoke-virtual {p0}, Lcom/fusepowered/ac/v;->f()V

    .line 91
    :goto_0
    invoke-static {}, Lcom/fusepowered/ac/a;->h()V

    .line 92
    return-void

    .line 88
    :cond_2
    iput-wide v0, p0, Lcom/fusepowered/ac/v;->f:D

    .line 89
    invoke-virtual {p0}, Lcom/fusepowered/ac/v;->h()V

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "AdColony suspending"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 97
    sput-boolean v2, Lcom/fusepowered/ac/a;->r:Z

    .line 99
    iget-boolean v0, p0, Lcom/fusepowered/ac/v;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v1, "AdColony.onPause() called without initial call to onResume()."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/v;->b:Z

    .line 102
    iput-boolean v2, p0, Lcom/fusepowered/ac/v;->c:Z

    .line 103
    invoke-static {}, Lcom/fusepowered/ac/ab;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/ac/v;->g:D

    .line 104
    invoke-virtual {p0}, Lcom/fusepowered/ac/v;->f()V

    .line 105
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "AdColony terminating"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->r:Z

    .line 113
    iget-wide v0, p0, Lcom/fusepowered/ac/v;->h:D

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/v;->a(D)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/v;->c:Z

    .line 116
    invoke-virtual {p0}, Lcom/fusepowered/ac/v;->f()V

    .line 117
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 122
    const-string v1, "allow_resume"

    iget-boolean v2, p0, Lcom/fusepowered/ac/v;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 123
    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/fusepowered/ac/v;->f:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 124
    const-string v1, "finish_time"

    iget-wide v2, p0, Lcom/fusepowered/ac/v;->g:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 125
    const-string v1, "session_time"

    iget-wide v2, p0, Lcom/fusepowered/ac/v;->h:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 127
    new-instance v1, Lcom/fusepowered/ac/f;

    const-string v2, "session_info.txt"

    invoke-direct {v1, v2}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;Lcom/fusepowered/ac/ADCData$g;)V

    .line 128
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "session_info.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 135
    const-string v1, "allow_resume"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/v;->c:Z

    .line 136
    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ac/v;->f:D

    .line 137
    const-string v1, "finish_time"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ac/v;->g:D

    .line 138
    const-string v1, "session_time"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/ac/v;->h:D

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/v;->d:Z

    goto :goto_0
.end method

.method h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/v;->e:Z

    .line 149
    invoke-static {}, Lcom/fusepowered/ac/ab;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/v;->i:Ljava/lang/String;

    .line 150
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fusepowered/ac/v;->h:D

    .line 153
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    if-nez v0, :cond_1

    .line 160
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 155
    :goto_0
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v2, v2, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$ab;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 157
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v2, v2, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2, v0}, Lcom/fusepowered/ac/n$ab;->a(I)Lcom/fusepowered/ac/n$y;

    move-result-object v2

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v2, v2, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2, v0}, Lcom/fusepowered/ac/n$ab;->a(I)Lcom/fusepowered/ac/n$y;

    move-result-object v2

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iput v1, v2, Lcom/fusepowered/ac/ag;->d:I

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
