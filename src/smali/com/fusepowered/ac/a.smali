.class Lcom/fusepowered/ac/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ac/a$b;,
        Lcom/fusepowered/ac/a$a;
    }
.end annotation


# static fields
.field static A:Z = false

.field static B:Z = false

.field static C:Z = false

.field static D:Z = false

.field static E:Z = false

.field static F:Z = false

.field static G:Lcom/fusepowered/ac/h; = null

.field static H:Lcom/fusepowered/ac/AdColonyAd; = null

.field static I:Lcom/fusepowered/ac/ADCVideo; = null

.field static J:Lcom/fusepowered/ac/ADCVideo; = null

.field static K:Lcom/fusepowered/ac/a$a; = null

.field static L:Lcom/fusepowered/ac/a$b; = null

.field static M:Z = false

.field static N:Z = false

.field static O:Z = false

.field static P:Z = false

.field static Q:I = 0x0

.field static R:Ljava/lang/String; = null

.field static S:Ljava/lang/String; = null

.field static T:Ljava/lang/String; = null

.field static U:Ljava/lang/String; = null

.field static V:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static W:Z = false

.field static X:J = 0x0L

.field static Y:I = 0x0

.field static Z:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Z = false

.field static aa:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/AdColonyV4VCListener;",
            ">;"
        }
    .end annotation
.end field

.field static ab:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field static ac:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/AdColonyNativeAdView;",
            ">;"
        }
    .end annotation
.end field

.field static ad:Ljava/util/HashMap; = null

.field private static ae:Landroid/app/Activity; = null

.field public static final b:Z = false

.field public static final c:Z = false

.field public static final d:Z = false

.field public static e:Ljava/lang/String; = null

.field public static final f:Ljava/lang/String;

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field static final k:Ljava/lang/String; = "AdColony"

.field static l:Lcom/fusepowered/ac/d;

.field static m:Z

.field static n:I

.field static o:Z

.field static p:Z

.field static q:Z

.field static r:Z

.field static s:Z

.field static t:Z

.field static u:Z

.field static v:Z

.field static w:I

.field static x:D

.field static y:Z

.field static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    sput-object v0, Lcom/fusepowered/ac/a;->e:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/fusepowered/ac/a;->f:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/fusepowered/ac/d;

    invoke-direct {v0}, Lcom/fusepowered/ac/d;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    .line 61
    const/4 v0, 0x2

    sput v0, Lcom/fusepowered/ac/a;->n:I

    .line 72
    sput-boolean v2, Lcom/fusepowered/ac/a;->u:Z

    .line 73
    sput-boolean v3, Lcom/fusepowered/ac/a;->v:Z

    .line 74
    sput v2, Lcom/fusepowered/ac/a;->w:I

    .line 75
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/fusepowered/ac/a;->x:D

    .line 76
    sput-boolean v2, Lcom/fusepowered/ac/a;->y:Z

    .line 77
    sput-boolean v2, Lcom/fusepowered/ac/a;->z:Z

    .line 78
    sput-boolean v2, Lcom/fusepowered/ac/a;->A:Z

    .line 79
    sput-boolean v2, Lcom/fusepowered/ac/a;->B:Z

    .line 80
    sput-boolean v3, Lcom/fusepowered/ac/a;->C:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    .line 107
    sput v2, Lcom/fusepowered/ac/a;->Y:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->aa:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    return-void
.end method

.method static a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    sput p0, Lcom/fusepowered/ac/a;->n:I

    .line 204
    sget-object v3, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    if-gtz p0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/fusepowered/ac/l;->f:Z

    .line 205
    sget-object v3, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    if-gt p0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/fusepowered/ac/l;->f:Z

    .line 206
    sget-object v3, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const/4 v0, 0x2

    if-gt p0, v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/fusepowered/ac/l;->f:Z

    .line 207
    sget-object v0, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const/4 v3, 0x3

    if-gt p0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, v0, Lcom/fusepowered/ac/l;->f:Z

    .line 208
    if-gtz p0, :cond_1

    const-string v0, "DEVELOPER LOGGING ENABLED"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->b(Ljava/lang/String;)V

    .line 209
    :cond_1
    if-gt p0, v1, :cond_2

    const-string v0, "DEBUG LOGGING ENABLED"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->c(Ljava/lang/String;)V

    .line 210
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 204
    goto :goto_0

    :cond_4
    move v0, v2

    .line 205
    goto :goto_1

    :cond_5
    move v0, v2

    .line 206
    goto :goto_2
.end method

.method static a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    sget v0, Lcom/fusepowered/ac/a;->n:I

    if-gt v0, p0, :cond_0

    .line 221
    packed-switch p0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 225
    :pswitch_0
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :pswitch_1
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/fusepowered/ac/a;->ae:Landroid/app/Activity;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sput-object p0, Lcom/fusepowered/ac/a;->ae:Landroid/app/Activity;

    .line 121
    new-instance v0, Lcom/fusepowered/ac/a$a;

    invoke-direct {v0}, Lcom/fusepowered/ac/a$a;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->K:Lcom/fusepowered/ac/a$a;

    .line 122
    new-instance v0, Lcom/fusepowered/ac/a$b;

    invoke-direct {v0}, Lcom/fusepowered/ac/a$b;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->L:Lcom/fusepowered/ac/a$b;

    .line 125
    new-instance v0, Lcom/fusepowered/ac/p$a;

    invoke-direct {v0}, Lcom/fusepowered/ac/p$a;-><init>()V

    goto :goto_0
.end method

.method static a(Lcom/fusepowered/ac/AdColonyNativeAdView;)V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method static a(Lcom/fusepowered/ac/j;)V
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/j;)V

    .line 389
    return-void
.end method

.method static a(Ljava/lang/RuntimeException;)V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->E:Z

    .line 190
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/ac/a;->e(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 192
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->E:Z

    .line 184
    invoke-static {p0}, Lcom/fusepowered/ac/a;->e(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/fusepowered/ac/a;->ae:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/fusepowered/ac/a;->ae:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/fusepowered/ac/AdColonyException;

    const-string v1, "AdColony.configure() must be called before any other AdColony methods. If you have called AdColony.configure(), the Activity reference you passed in via AdColony.configure() OR AdColony.resume() is null."

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/AdColonyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    sget-object v0, Lcom/fusepowered/ac/a;->ae:Landroid/app/Activity;

    return-object v0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    sput-boolean v1, Lcom/fusepowered/ac/a;->p:Z

    .line 132
    invoke-static {p0}, Lcom/fusepowered/ac/a;->a(Landroid/app/Activity;)V

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    .line 134
    invoke-static {}, Lcom/fusepowered/ac/g;->i()Z

    move-result v0

    sput-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    .line 136
    sget-boolean v0, Lcom/fusepowered/ac/a;->E:Z

    if-eqz v0, :cond_0

    .line 139
    sput-boolean v1, Lcom/fusepowered/ac/a;->E:Z

    .line 140
    sput-boolean v1, Lcom/fusepowered/ac/a;->o:Z

    .line 141
    new-instance v0, Lcom/fusepowered/ac/d;

    invoke-direct {v0}, Lcom/fusepowered/ac/d;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    .line 143
    :cond_0
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/fusepowered/ac/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 212
    sget v0, Lcom/fusepowered/ac/a;->n:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/fusepowered/ac/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/fusepowered/ac/a;->E:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/fusepowered/ac/a;->q:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/fusepowered/ac/a;->o:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/fusepowered/ac/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/fusepowered/ac/a;->o:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fusepowered/ac/a;->E:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/fusepowered/ac/a;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e()V
    .locals 0

    .prologue
    .line 196
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    .line 197
    return-void
.end method

.method static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/fusepowered/ac/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    return-void
.end method

.method static f()Z
    .locals 1

    .prologue
    .line 214
    sget v0, Lcom/fusepowered/ac/a;->n:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 215
    sget v1, Lcom/fusepowered/ac/a;->n:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static h(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static h()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 264
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    return-void

    .line 265
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/fusepowered/ac/a;->ad:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/fusepowered/ac/a;->ad:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 269
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v8, v4}, Lcom/fusepowered/ac/d;->b(Ljava/lang/String;ZZ)Z

    move-result v1

    move v2, v1

    .line 277
    :goto_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    new-instance v2, Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v7, 0x12c

    invoke-direct {v2, v5, v1, v7, v8}, Lcom/fusepowered/ac/AdColonyNativeAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 280
    invoke-virtual {v2, v8}, Lcom/fusepowered/ac/AdColonyNativeAdView;->a(Z)Z

    move-result v2

    move v5, v2

    .line 283
    :goto_1
    if-eq v3, v5, :cond_2

    .line 286
    sget-object v1, Lcom/fusepowered/ac/a;->ad:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 289
    :goto_2
    sget-object v1, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 291
    sget-object v1, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;->onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V

    .line 289
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 274
    :cond_3
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v8, v4}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_4
    move v5, v2

    goto :goto_1
.end method

.method static i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
