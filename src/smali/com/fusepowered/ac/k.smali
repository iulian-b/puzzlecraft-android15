.class Lcom/fusepowered/ac/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/fusepowered/ac/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/fusepowered/ac/z;

    invoke-direct {v0}, Lcom/fusepowered/ac/z;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 249
    :goto_0
    return v0

    .line 247
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 248
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$i;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/fusepowered/ac/f;->b()Lcom/fusepowered/ac/s;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;
    .locals 6

    .prologue
    const/16 v5, 0x74

    const/16 v4, 0x6e

    const/16 v3, 0x66

    const/4 v2, 0x0

    .line 97
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 99
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v0

    .line 100
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/fusepowered/ac/k;->c(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/fusepowered/ac/k;->d(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$c;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/fusepowered/ac/k;->h(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    invoke-static {p0}, Lcom/fusepowered/ac/k;->h(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_3
    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-ne v0, v1, :cond_9

    .line 108
    :cond_4
    invoke-static {p0}, Lcom/fusepowered/ac/k;->e(Lcom/fusepowered/ac/s;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/fusepowered/ac/ADCData$f;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/ADCData$f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 112
    if-ne v0, v5, :cond_6

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/fusepowered/ac/ADCData;->a:Lcom/fusepowered/ac/ADCData$i;

    goto :goto_0

    .line 113
    :cond_6
    if-ne v0, v3, :cond_7

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/fusepowered/ac/ADCData;->b:Lcom/fusepowered/ac/ADCData$i;

    goto :goto_0

    .line 114
    :cond_7
    if-ne v0, v4, :cond_8

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/fusepowered/ac/ADCData;->c:Lcom/fusepowered/ac/ADCData$i;

    goto :goto_0

    .line 116
    :cond_8
    new-instance v0, Lcom/fusepowered/ac/ADCData$f;

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/ADCData$f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_9
    const/16 v1, 0x61

    if-lt v0, v1, :cond_a

    const/16 v1, 0x7a

    if-le v0, v1, :cond_c

    :cond_a
    const/16 v1, 0x41

    if-lt v0, v1, :cond_b

    const/16 v1, 0x5a

    if-le v0, v1, :cond_c

    :cond_b
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x24

    if-ne v0, v1, :cond_11

    .line 120
    :cond_c
    invoke-static {p0}, Lcom/fusepowered/ac/k;->g(Lcom/fusepowered/ac/s;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/fusepowered/ac/ADCData$f;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/ADCData$f;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_d
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 124
    if-ne v0, v5, :cond_e

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v0, Lcom/fusepowered/ac/ADCData;->a:Lcom/fusepowered/ac/ADCData$i;

    goto/16 :goto_0

    .line 125
    :cond_e
    if-ne v0, v3, :cond_f

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Lcom/fusepowered/ac/ADCData;->b:Lcom/fusepowered/ac/ADCData$i;

    goto/16 :goto_0

    .line 126
    :cond_f
    if-ne v0, v4, :cond_10

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/fusepowered/ac/ADCData;->c:Lcom/fusepowered/ac/ADCData$i;

    goto/16 :goto_0

    .line 128
    :cond_10
    new-instance v0, Lcom/fusepowered/ac/ADCData$f;

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/ADCData$f;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$i;
    .locals 1

    .prologue
    .line 77
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fusepowered/ac/s;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/fusepowered/ac/f;Lcom/fusepowered/ac/ADCData$c;)V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/fusepowered/ac/f;->a()Lcom/fusepowered/ac/y;

    move-result-object v0

    .line 41
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$c;->a(Lcom/fusepowered/ac/af;)V

    .line 44
    invoke-virtual {v0}, Lcom/fusepowered/ac/y;->d()V

    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/fusepowered/ac/y;->b()V

    .line 52
    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v2, "Saving empty property list."

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 49
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/y;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Lcom/fusepowered/ac/f;Lcom/fusepowered/ac/ADCData$g;)V
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fusepowered/ac/f;->a()Lcom/fusepowered/ac/y;

    move-result-object v0

    .line 25
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->a(Lcom/fusepowered/ac/af;)V

    .line 28
    invoke-virtual {v0}, Lcom/fusepowered/ac/y;->d()V

    .line 35
    :goto_0
    invoke-virtual {v0}, Lcom/fusepowered/ac/y;->b()V

    .line 36
    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v2, "Saving empty property table."

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 33
    const-string v1, "{}"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/y;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Lcom/fusepowered/ac/f;Lcom/fusepowered/ac/ADCData$i;)V
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/fusepowered/ac/f;->a()Lcom/fusepowered/ac/y;

    move-result-object v0

    .line 10
    if-nez p1, :cond_0

    .line 12
    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/y;->b(Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-virtual {v0}, Lcom/fusepowered/ac/y;->b()V

    .line 20
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$i;->a(Lcom/fusepowered/ac/af;)V

    .line 17
    invoke-virtual {v0}, Lcom/fusepowered/ac/y;->d()V

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "==== ADCJSON Test ===="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "test.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-static {v0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$g;

    .line 367
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "test2.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/fusepowered/ac/f;

    const-string v2, "test.txt"

    invoke-direct {v1, v2}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;Lcom/fusepowered/ac/ADCData$i;)V

    .line 368
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "test3.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/fusepowered/ac/f;

    const-string v2, "test2.txt"

    invoke-direct {v1, v2}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;Lcom/fusepowered/ac/ADCData$i;)V

    .line 369
    return-void
.end method

.method static b(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$g;
    .locals 2

    .prologue
    .line 63
    invoke-static {p0}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->m()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->n()Lcom/fusepowered/ac/ADCData$g;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;
    .locals 2

    .prologue
    .line 83
    invoke-static {p0}, Lcom/fusepowered/ac/k;->a(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->m()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->n()Lcom/fusepowered/ac/ADCData$g;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Lcom/fusepowered/ac/s;)V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v0

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    const/16 v1, 0x7e

    if-le v0, v1, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    .line 142
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v0

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method static c(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$c;
    .locals 2

    .prologue
    .line 70
    invoke-static {p0}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->h()Lcom/fusepowered/ac/ADCData$c;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$c;
    .locals 2

    .prologue
    .line 90
    invoke-static {p0}, Lcom/fusepowered/ac/k;->a(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCData$i;->h()Lcom/fusepowered/ac/ADCData$c;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$g;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x7d

    const/4 v3, 0x1

    .line 148
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 150
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 154
    new-instance v1, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 155
    invoke-virtual {p0, v6}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 158
    :goto_1
    if-nez v2, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    :cond_3
    const/4 v2, 0x0

    .line 162
    invoke-static {p0}, Lcom/fusepowered/ac/k;->g(Lcom/fusepowered/ac/s;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 165
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    invoke-virtual {v1, v4, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 177
    :goto_2
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    goto :goto_1

    .line 171
    :cond_4
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 173
    invoke-static {p0}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v5

    .line 174
    invoke-virtual {v1, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$i;)V

    goto :goto_2

    .line 180
    :cond_5
    invoke-virtual {p0, v6}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 182
    goto :goto_0
.end method

.method static d(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$c;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x5d

    .line 187
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 189
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 193
    new-instance v1, Lcom/fusepowered/ac/ADCData$c;

    invoke-direct {v1}, Lcom/fusepowered/ac/ADCData$c;-><init>()V

    .line 194
    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 196
    :cond_2
    const/4 v2, 0x1

    .line 197
    :goto_1
    if-nez v2, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    :cond_3
    const/4 v2, 0x0

    .line 200
    invoke-static {p0}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/ac/ADCData$c;->a(Lcom/fusepowered/ac/ADCData$i;)Lcom/fusepowered/ac/ADCData$c;

    .line 201
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    goto :goto_1

    .line 204
    :cond_4
    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 206
    goto :goto_0
.end method

.method static e(Lcom/fusepowered/ac/s;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v1, 0x27

    const/16 v0, 0x22

    .line 211
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, ""

    .line 241
    :goto_1
    return-object v0

    .line 215
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 219
    :cond_2
    sget-object v1, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    invoke-virtual {v1}, Lcom/fusepowered/ac/z;->a()V

    .line 220
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    move-result v1

    .line 221
    :goto_2
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eq v1, v0, :cond_a

    .line 223
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_9

    .line 225
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    move-result v1

    .line 226
    const/16 v2, 0x62

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/z;->b(C)V

    .line 238
    :goto_3
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    move-result v1

    goto :goto_2

    .line 227
    :cond_3
    const/16 v2, 0x66

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/z;->b(C)V

    goto :goto_3

    .line 228
    :cond_4
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/z;->b(C)V

    goto :goto_3

    .line 229
    :cond_5
    const/16 v2, 0x72

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/z;->b(C)V

    goto :goto_3

    .line 230
    :cond_6
    const/16 v2, 0x74

    if-ne v1, v2, :cond_7

    sget-object v1, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/z;->b(C)V

    goto :goto_3

    .line 231
    :cond_7
    const/16 v2, 0x75

    if-ne v1, v2, :cond_8

    sget-object v1, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    invoke-static {p0}, Lcom/fusepowered/ac/k;->f(Lcom/fusepowered/ac/s;)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/z;->b(C)V

    goto :goto_3

    .line 232
    :cond_8
    sget-object v2, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/z;->b(C)V

    goto :goto_3

    .line 236
    :cond_9
    sget-object v2, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/z;->b(C)V

    goto :goto_3

    .line 241
    :cond_a
    sget-object v0, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    invoke-virtual {v0}, Lcom/fusepowered/ac/z;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method static f(Lcom/fusepowered/ac/s;)C
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    move v1, v0

    .line 255
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    move-result v2

    invoke-static {v2}, Lcom/fusepowered/ac/k;->a(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    int-to-char v0, v0

    return v0
.end method

.method static g(Lcom/fusepowered/ac/s;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 269
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v1

    .line 270
    const/16 v0, 0x22

    if-eq v1, v0, :cond_0

    const/16 v0, 0x27

    if-ne v1, v0, :cond_1

    .line 272
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/ac/k;->e(Lcom/fusepowered/ac/s;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 276
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    invoke-virtual {v0}, Lcom/fusepowered/ac/z;->a()V

    .line 277
    const/4 v0, 0x0

    .line 278
    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 280
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4

    :cond_2
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_3
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x24

    if-ne v1, v2, :cond_5

    .line 282
    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    .line 283
    sget-object v2, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/z;->b(C)V

    .line 284
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v1

    goto :goto_1

    .line 288
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 292
    :cond_6
    sget-object v0, Lcom/fusepowered/ac/k;->a:Lcom/fusepowered/ac/z;

    invoke-virtual {v0}, Lcom/fusepowered/ac/z;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static h(Lcom/fusepowered/ac/s;)Lcom/fusepowered/ac/ADCData$i;
    .locals 12

    .prologue
    .line 299
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 301
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 302
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 305
    invoke-static {p0}, Lcom/fusepowered/ac/k;->b(Lcom/fusepowered/ac/s;)V

    .line 308
    :cond_0
    const-wide/16 v4, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v2

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    .line 313
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    add-int/lit8 v2, v2, -0x30

    int-to-double v2, v2

    add-double/2addr v4, v2

    .line 314
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v2

    goto :goto_0

    .line 317
    :cond_1
    const/4 v2, 0x0

    .line 319
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    const/4 v9, 0x1

    .line 322
    const-wide/16 v6, 0x0

    .line 323
    const-wide/16 v2, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v8

    .line 325
    :goto_1
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x30

    if-lt v8, v10, :cond_2

    const/16 v10, 0x39

    if-gt v8, v10, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    .line 328
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v10

    add-int/lit8 v8, v8, -0x30

    int-to-double v10, v8

    add-double/2addr v6, v10

    .line 329
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v10

    .line 330
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v8

    goto :goto_1

    .line 332
    :cond_2
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double v2, v6, v2

    add-double/2addr v4, v2

    move v2, v9

    .line 335
    :cond_3
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x45

    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 337
    :cond_4
    const/4 v3, 0x0

    .line 338
    const/16 v6, 0x2b

    invoke-virtual {p0, v6}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v6, 0x2d

    invoke-virtual {p0, v6}, Lcom/fusepowered/ac/s;->a(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, 0x1

    .line 340
    :cond_5
    const-wide/16 v6, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v8

    .line 342
    :goto_2
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->a()Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x30

    if-lt v8, v9, :cond_6

    const/16 v9, 0x39

    if-gt v8, v9, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->c()C

    .line 345
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v10

    add-int/lit8 v8, v8, -0x30

    int-to-double v8, v8

    add-double/2addr v6, v8

    .line 346
    invoke-virtual {p0}, Lcom/fusepowered/ac/s;->b()C

    move-result v8

    goto :goto_2

    .line 349
    :cond_6
    if-eqz v3, :cond_9

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 353
    :cond_7
    :goto_3
    mul-double/2addr v4, v0

    .line 355
    if-nez v2, :cond_8

    double-to-int v0, v4

    int-to-double v0, v0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_a

    :cond_8
    new-instance v0, Lcom/fusepowered/ac/ADCData$e;

    invoke-direct {v0, v4, v5}, Lcom/fusepowered/ac/ADCData$e;-><init>(D)V

    .line 356
    :goto_4
    return-object v0

    .line 350
    :cond_9
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    goto :goto_3

    .line 356
    :cond_a
    new-instance v0, Lcom/fusepowered/ac/ADCData$b;

    double-to-int v1, v4

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/ADCData$b;-><init>(I)V

    goto :goto_4
.end method
