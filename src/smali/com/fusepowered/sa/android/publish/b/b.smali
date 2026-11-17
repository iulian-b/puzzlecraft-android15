.class public abstract Lcom/fusepowered/sa/android/publish/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/b/b$1;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/app/Activity;

.field private c:[Z

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

.field private h:Z

.field private i:Lcom/fusepowered/sa/android/publish/adinformation/b;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)Lcom/fusepowered/sa/android/publish/b/b;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/fusepowered/sa/android/publish/b/b$1;->a:[I

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/b/a;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/b/a;-><init>()V

    move-object v1, v0

    :goto_0
    invoke-direct {v1, p1}, Lcom/fusepowered/sa/android/publish/b/b;->a(Landroid/content/Intent;)V

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/b/b;->a(Landroid/app/Activity;)V

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a(Ljava/lang/String;)V

    const-string v0, "tracking"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a([Ljava/lang/String;)V

    const-string v0, "smartRedirect"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a([Z)V

    const-string v0, "html"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->b(Ljava/lang/String;)V

    const-string v0, "isSplash"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a(Z)V

    const-string v0, "adInfoOverride"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/b;

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a(Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    const-string v0, "orientation"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a(I)V

    invoke-direct {v1, p2}, Lcom/fusepowered/sa/android/publish/b/b;->a(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/b/b;->c()[Z

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v2, [Z

    aput-boolean v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/b/b;->a([Z)V

    :cond_0
    const-string v0, "GenericMode"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Placement=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/b/b;->g()Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/b/d;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/b/d;-><init>()V

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/fusepowered/sa/android/publish/b/e;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/b/e;-><init>()V

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/fusepowered/sa/android/publish/b/f;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/b/f;-><init>()V

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->j:I

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->b:Landroid/app/Activity;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->a:Landroid/content/Intent;

    return-void
.end method

.method private a(Lcom/fusepowered/sa/android/publish/adinformation/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->i:Lcom/fusepowered/sa/android/publish/adinformation/b;

    return-void
.end method

.method private a(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->g:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->h:Z

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->e:[Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method protected a([Z)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/b;->c:[Z

    return-void
.end method

.method public abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->b:Landroid/app/Activity;

    return-object v0
.end method

.method protected c()[Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->c:[Z

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected g()Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->g:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    return-object v0
.end method

.method protected h()Lcom/fusepowered/sa/android/publish/adinformation/b;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->i:Lcom/fusepowered/sa/android/publish/adinformation/b;

    return-object v0
.end method

.method protected i()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/b/b;->j:I

    return v0
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method
