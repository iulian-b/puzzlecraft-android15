.class Lcom/fusepowered/ac/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static c:Ljava/lang/String;


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:Z

.field a:Lcom/fusepowered/ac/d;

.field b:Ljava/lang/String;

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Ljava/lang/String;

.field i:Lcom/fusepowered/ac/ADCData$g;

.field j:Ljava/lang/String;

.field k:[Ljava/lang/String;

.field l:Lcom/fusepowered/ac/n$y;

.field m:Lcom/fusepowered/ac/n$a;

.field n:D

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Z

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "https://androidads21.adcolony.com/configure"

    sput-object v0, Lcom/fusepowered/ac/c;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/fusepowered/ac/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "2.1.3"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->b:Ljava/lang/String;

    .line 14
    const/16 v0, 0x12c

    iput v0, p0, Lcom/fusepowered/ac/c;->d:I

    .line 15
    iput v2, p0, Lcom/fusepowered/ac/c;->e:I

    .line 17
    iput-boolean v2, p0, Lcom/fusepowered/ac/c;->f:Z

    .line 18
    iput-boolean v2, p0, Lcom/fusepowered/ac/c;->g:Z

    .line 21
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fusepowered/ac/c;->n:D

    .line 33
    const-string v0, "android"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->o:Ljava/lang/String;

    .line 34
    const-string v0, "android_native"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->p:Ljava/lang/String;

    .line 37
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->q:Ljava/lang/String;

    .line 38
    const-string v0, "google"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->r:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/fusepowered/ac/c;->s:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/c;->x:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    .line 67
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method a()V
    .locals 4

    .prologue
    .line 104
    :goto_0
    sget-boolean v0, Lcom/fusepowered/ac/AdColony;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/ac/c;->e:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 108
    :try_start_0
    iget v0, p0, Lcom/fusepowered/ac/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/ac/c;->e:I

    .line 109
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/c;->e:I

    .line 117
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->g:Lcom/fusepowered/ac/ah;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ah;->a()V

    .line 120
    sget-object v0, Lcom/fusepowered/ac/g;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->K:Ljava/lang/String;

    .line 121
    sget-boolean v0, Lcom/fusepowered/ac/g;->b:Z

    iput-boolean v0, p0, Lcom/fusepowered/ac/c;->L:Z

    .line 122
    invoke-static {}, Lcom/fusepowered/ac/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->t:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/fusepowered/ac/c;->K:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/fusepowered/ac/c;->u:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/fusepowered/ac/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->w:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/fusepowered/ac/c;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 129
    invoke-static {}, Lcom/fusepowered/ac/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->y:Ljava/lang/String;

    .line 132
    :cond_1
    invoke-static {}, Lcom/fusepowered/ac/g;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->z:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/fusepowered/ac/g;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->A:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/fusepowered/ac/g;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->E:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/fusepowered/ac/g;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->F:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/fusepowered/ac/g;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->G:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->J:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/fusepowered/ac/g;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->C:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/c;->D:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/fusepowered/ac/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->H:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/fusepowered/ac/g;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->I:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/fusepowered/ac/c;->G:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/ac/a;->T:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/fusepowered/ac/c;->b:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/ac/a;->U:Ljava/lang/String;

    .line 149
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v0, :cond_c

    const-string v0, "tablet"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->B:Ljava/lang/String;

    .line 152
    :goto_2
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    .line 153
    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/fusepowered/ac/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.market"

    invoke-static {v0}, Lcom/fusepowered/ac/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    :cond_2
    const-string v0, "google"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    .line 157
    :cond_3
    const-string v0, "com.amazon.venezia"

    invoke-static {v0}, Lcom/fusepowered/ac/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    .line 160
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    .line 163
    :cond_5
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    iget-boolean v0, v0, Lcom/fusepowered/ac/l;->f:Z

    if-eqz v0, :cond_6

    .line 165
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "sdk_version:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 166
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "ad_manifest_url:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/ac/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 168
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "app_id:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 169
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "zone_ids:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->k:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 171
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "os_name:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 172
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "sdk_type:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 174
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "app_version:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 175
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "origin_store:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 176
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "skippable:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/ac/c;->s:Z

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Z)Lcom/fusepowered/ac/l;

    .line 178
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "android_id:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 179
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "android_id_sha1:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 180
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "available_stores:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 181
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "carrier_name:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 182
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "custom_id:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 183
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "device_id:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 184
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "device_manufacturer:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 185
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "device_model:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 186
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "device_type:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 187
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "imei:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 188
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "imei_sha1:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 189
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "language:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 190
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "open_udid:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 191
    sget-object v0, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v1, "os_version:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/c;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 194
    :cond_6
    new-instance v0, Lcom/fusepowered/ac/z;

    invoke-direct {v0}, Lcom/fusepowered/ac/z;-><init>()V

    .line 195
    const-string v1, "&os_name="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/fusepowered/ac/c;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 197
    const-string v1, "&os_version="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/fusepowered/ac/c;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 199
    const-string v1, "&device_api="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/fusepowered/ac/c;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 201
    const-string v1, "&app_version="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/fusepowered/ac/c;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 203
    const-string v1, "&android_id_sha1="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/fusepowered/ac/c;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 205
    const-string v1, "&device_id="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/fusepowered/ac/c;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 207
    const-string v1, "&open_udid="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/fusepowered/ac/c;->F:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 209
    const-string v1, "&device_type="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/fusepowered/ac/c;->B:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 211
    const-string v1, "&ln="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/fusepowered/ac/c;->E:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 213
    const-string v1, "&device_brand="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/fusepowered/ac/c;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 215
    const-string v1, "&device_model="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/fusepowered/ac/c;->A:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 217
    const-string v1, "&screen_width="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fusepowered/ac/g;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 219
    const-string v1, "&screen_height="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fusepowered/ac/g;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 221
    const-string v1, "&sdk_type="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/fusepowered/ac/c;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 223
    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/fusepowered/ac/c;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 225
    const-string v1, "&origin_store="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/fusepowered/ac/c;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 227
    const-string v1, "&available_stores="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/fusepowered/ac/c;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 229
    const-string v1, "&imei_sha1="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/fusepowered/ac/c;->D:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 231
    const-string v1, "&memory_class="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/fusepowered/ac/c;->H:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 233
    const-string v1, "&memory_used_mb="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/fusepowered/ac/c;->I:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 235
    const-string v1, "&advertiser_id="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/fusepowered/ac/c;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 237
    const-string v1, "&limit_tracking="

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Ljava/lang/String;)V

    .line 238
    iget-boolean v1, p0, Lcom/fusepowered/ac/c;->L:Z

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/z;->a(Z)V

    .line 239
    invoke-virtual {v0}, Lcom/fusepowered/ac/z;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->h:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->f:Lcom/fusepowered/ac/ADCStorage;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCStorage;->a()V

    .line 244
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    invoke-virtual {v0}, Lcom/fusepowered/ac/o;->a()V

    .line 245
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    invoke-virtual {v0}, Lcom/fusepowered/ac/u;->a()V

    .line 246
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->a()V

    .line 247
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->e:Lcom/fusepowered/ac/v;

    invoke-virtual {v0}, Lcom/fusepowered/ac/v;->a()V

    .line 248
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v0}, Lcom/fusepowered/ac/t;->a()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/c;->g:Z

    .line 252
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->e()V

    .line 253
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/fusepowered/ac/n$e;->j:Ljava/lang/String;

    .line 261
    :cond_a
    return-void

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/fusepowered/ac/c;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/ac/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 150
    :cond_c
    const-string v0, "phone"

    iput-object v0, p0, Lcom/fusepowered/ac/c;->B:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 73
    if-nez p1, :cond_0

    const-string p1, ""

    .line 74
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 76
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 77
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 79
    aget-object v5, v4, v1

    .line 80
    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 81
    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v4, p0, Lcom/fusepowered/ac/c;->q:Ljava/lang/String;

    .line 74
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    const-string v6, "store"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "amazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    :cond_3
    iput-object v4, p0, Lcom/fusepowered/ac/c;->r:Ljava/lang/String;

    goto :goto_1

    .line 90
    :cond_4
    new-instance v0, Lcom/fusepowered/ac/AdColonyException;

    const-string v1, "Origin store in client options must be set to either \'google\' or \'amazon\'"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/AdColonyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_5
    const-string v4, "skippable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/fusepowered/ac/c;->s:Z

    goto :goto_1

    .line 97
    :cond_6
    aget-object v4, v4, v1

    const-string v5, "skippable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/fusepowered/ac/c;->s:Z

    goto :goto_1

    .line 100
    :cond_7
    return-void
.end method

.method a(Ljava/lang/String;Lcom/fusepowered/ac/n$a;)V
    .locals 6

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->l:Lcom/fusepowered/ac/n$y;

    .line 276
    iget-object v0, p0, Lcom/fusepowered/ac/c;->l:Lcom/fusepowered/ac/n$y;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/c;->l:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->i()Lcom/fusepowered/ac/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    .line 284
    iget-object v1, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v1, v1, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    .line 286
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_enabled"

    iget-boolean v4, v1, Lcom/fusepowered/ac/n$x;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 287
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_filepath"

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_width"

    iget v4, v1, Lcom/fusepowered/ac/n$x;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 289
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_height"

    iget v4, v1, Lcom/fusepowered/ac/n$x;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 290
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_duration"

    iget-wide v4, v1, Lcom/fusepowered/ac/n$x;->m:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 293
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "engagement_delay"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget v4, v4, Lcom/fusepowered/ac/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 294
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "skip_delay"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    iget v4, v4, Lcom/fusepowered/ac/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 297
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_close_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_close_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_reload_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_reload_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_back_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_back_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_forward_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_forward_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_stop_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_stop_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_glow_button"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_icon"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    iget-object v4, v4, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "mute"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->k:Lcom/fusepowered/ac/n$j;

    iget-object v4, v4, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "unmute"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->l:Lcom/fusepowered/ac/n$j;

    iget-object v4, v4, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "poster_image"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "thumb_image"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "advertiser_name"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "description"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "title"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "native_engagement_enabled"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->j:Lcom/fusepowered/ac/n$o;

    iget-boolean v4, v4, Lcom/fusepowered/ac/n$o;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 318
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "native_engagement_type"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->j:Lcom/fusepowered/ac/n$o;

    iget-object v4, v4, Lcom/fusepowered/ac/n$o;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "native_engagement_command"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->j:Lcom/fusepowered/ac/n$o;

    iget-object v4, v4, Lcom/fusepowered/ac/n$o;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "native_engagement_label"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-object v4, v4, Lcom/fusepowered/ac/n$n;->j:Lcom/fusepowered/ac/n$o;

    iget-object v4, v4, Lcom/fusepowered/ac/n$o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "skip_video_image_normal"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "skip_video_image_down"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "engagement_image_normal"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "engagement_image_down"

    iget-object v1, v1, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-object v1, v1, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/fusepowered/ac/c;->b()V

    goto/16 :goto_0

    .line 278
    :cond_2
    iput-object p2, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    goto/16 :goto_1
.end method

.method b()V
    .locals 5

    .prologue
    .line 391
    iget-object v0, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-object v0, v0, Lcom/fusepowered/ac/n$h;->h:Lcom/fusepowered/ac/n$t;

    .line 392
    iget-object v1, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v1, v1, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-object v1, v1, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    .line 394
    iget-object v2, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    .line 395
    iget-object v3, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v3, v3, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-boolean v3, v3, Lcom/fusepowered/ac/n$h;->d:Z

    if-nez v3, :cond_0

    .line 397
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "end_card_enabled"

    iget-object v2, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v2, v2, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$h;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 440
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {v1}, Lcom/fusepowered/ac/n$i;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->M:Z

    .line 403
    iget-object v0, v1, Lcom/fusepowered/ac/n$i;->g:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/ac/a;->R:Ljava/lang/String;

    .line 404
    iget-object v0, v1, Lcom/fusepowered/ac/n$i;->f:Lcom/fusepowered/ac/n$m;

    iget-object v0, v0, Lcom/fusepowered/ac/n$m;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/ac/a;->S:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "close_image_normal"

    iget-object v4, v1, Lcom/fusepowered/ac/n$i;->j:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "close_image_down"

    iget-object v4, v1, Lcom/fusepowered/ac/n$i;->j:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "reload_image_normal"

    iget-object v4, v1, Lcom/fusepowered/ac/n$i;->i:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "reload_image_down"

    iget-object v1, v1, Lcom/fusepowered/ac/n$i;->i:Lcom/fusepowered/ac/n$g;

    iget-object v1, v1, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    .line 435
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "end_card_enabled"

    iget-object v2, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v2, v2, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$h;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 436
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "load_timeout_enabled"

    iget-object v2, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v2, v2, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-object v2, v2, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$i;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 437
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "load_timeout"

    iget-object v2, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v2, v2, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-object v2, v2, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    iget-wide v2, v2, Lcom/fusepowered/ac/n$i;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 438
    iget-object v0, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "hardware_acceleration_disabled"

    iget-object v2, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v2, v2, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$e;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 415
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusepowered/ac/a;->M:Z

    .line 416
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "end_card_filepath"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "info_image_normal"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->f:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "info_image_down"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->f:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "info_url"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->f:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "replay_image_normal"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->h:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "replay_image_down"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->h:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "continue_image_normal"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->i:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "continue_image_down"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->i:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "download_image_normal"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->g:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "download_image_down"

    iget-object v4, v0, Lcom/fusepowered/ac/n$t;->g:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v2, "download_url"

    iget-object v0, v0, Lcom/fusepowered/ac/n$t;->g:Lcom/fusepowered/ac/n$g;

    iget-object v0, v0, Lcom/fusepowered/ac/n$g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Lcom/fusepowered/ac/n$a;)V

    .line 272
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->l:Lcom/fusepowered/ac/n$y;

    .line 335
    iget-object v0, p0, Lcom/fusepowered/ac/c;->l:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->i()Lcom/fusepowered/ac/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    .line 337
    iget-object v0, p0, Lcom/fusepowered/ac/c;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    .line 340
    iget-object v1, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v1, v1, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    .line 342
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_enabled"

    iget-boolean v4, v1, Lcom/fusepowered/ac/n$x;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 343
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_filepath"

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_width"

    iget v4, v1, Lcom/fusepowered/ac/n$x;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 345
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_height"

    iget v4, v1, Lcom/fusepowered/ac/n$x;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 346
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "video_duration"

    iget-wide v4, v1, Lcom/fusepowered/ac/n$x;->m:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;D)V

    .line 349
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "engagement_delay"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget v4, v4, Lcom/fusepowered/ac/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 350
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "skip_delay"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    iget v4, v4, Lcom/fusepowered/ac/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {p0}, Lcom/fusepowered/ac/c;->b()V

    .line 355
    iget-object v2, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v2, v2, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    .line 356
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "pre_popup_bg"

    iget-object v5, v2, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    iget-object v5, v5, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    iget-object v5, v5, Lcom/fusepowered/ac/n$r;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "v4vc_logo"

    iget-object v5, v2, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    iget-object v5, v5, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    iget-object v5, v5, Lcom/fusepowered/ac/n$r;->l:Lcom/fusepowered/ac/n$j;

    iget-object v5, v5, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "no_button_normal"

    iget-object v5, v2, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    iget-object v5, v5, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    iget-object v5, v5, Lcom/fusepowered/ac/n$r;->n:Lcom/fusepowered/ac/n$g;

    iget-object v5, v5, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "no_button_down"

    iget-object v5, v2, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    iget-object v5, v5, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    iget-object v5, v5, Lcom/fusepowered/ac/n$r;->n:Lcom/fusepowered/ac/n$g;

    iget-object v5, v5, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "yes_button_normal"

    iget-object v5, v2, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    iget-object v5, v5, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    iget-object v5, v5, Lcom/fusepowered/ac/n$r;->m:Lcom/fusepowered/ac/n$g;

    iget-object v5, v5, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "yes_button_down"

    iget-object v5, v2, Lcom/fusepowered/ac/n$c;->b:Lcom/fusepowered/ac/n$s;

    iget-object v5, v5, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    iget-object v5, v5, Lcom/fusepowered/ac/n$r;->m:Lcom/fusepowered/ac/n$g;

    iget-object v5, v5, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "done_button_normal"

    iget-object v5, v2, Lcom/fusepowered/ac/n$c;->c:Lcom/fusepowered/ac/n$q;

    iget-object v5, v5, Lcom/fusepowered/ac/n$q;->d:Lcom/fusepowered/ac/n$p;

    iget-object v5, v5, Lcom/fusepowered/ac/n$p;->m:Lcom/fusepowered/ac/n$g;

    iget-object v5, v5, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v4, "done_button_down"

    iget-object v2, v2, Lcom/fusepowered/ac/n$c;->c:Lcom/fusepowered/ac/n$q;

    iget-object v2, v2, Lcom/fusepowered/ac/n$q;->d:Lcom/fusepowered/ac/n$p;

    iget-object v2, v2, Lcom/fusepowered/ac/n$p;->m:Lcom/fusepowered/ac/n$g;

    iget-object v2, v2, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_close_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_close_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_reload_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_reload_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_back_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_back_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_forward_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_forward_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_stop_image_normal"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_stop_image_down"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_glow_button"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "browser_icon"

    iget-object v4, p0, Lcom/fusepowered/ac/c;->m:Lcom/fusepowered/ac/n$a;

    iget-object v4, v4, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    iget-object v4, v4, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    iget-object v4, v4, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "skip_video_image_normal"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "skip_video_image_down"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "engagement_image_normal"

    iget-object v4, v1, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-object v4, v4, Lcom/fusepowered/ac/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/fusepowered/ac/c;->i:Lcom/fusepowered/ac/ADCData$g;

    const-string v3, "engagement_image_down"

    iget-object v1, v1, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-object v1, v1, Lcom/fusepowered/ac/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method
