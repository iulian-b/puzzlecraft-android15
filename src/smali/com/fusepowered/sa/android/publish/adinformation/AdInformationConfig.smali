.class public Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x537a12255ee00aeL


# instance fields
.field private ImageResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/adinformation/d;",
            ">;"
        }
    .end annotation
.end field

.field protected Positions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;",
            "Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;",
            ">;"
        }
    .end annotation
.end field

.field private SimpleToken:Lcom/fusepowered/sa/android/publish/adinformation/e;

.field private transient a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;",
            "Lcom/fusepowered/sa/android/publish/adinformation/d;",
            ">;"
        }
    .end annotation
.end field

.field private dialogUrl:Ljava/lang/String;

.field private enabled:Z

.field private fatFingersFactor:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->enabled:Z

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->fatFingersFactor:F

    const-string v0, "http://d1byvlfiet2h9q.cloudfront.net/InApp/resources/adInformationDialog3.html"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->dialogUrl:Ljava/lang/String;

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/e;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/adinformation/e;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->SimpleToken:Lcom/fusepowered/sa/android/publish/adinformation/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->Positions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->ImageResources:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;-><init>()V

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;)V

    return-object v0
.end method

.method public static a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->h()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->g()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->Positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;->BOTTOM_LEFT:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->Positions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/fusepowered/sa/android/publish/adinformation/d;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/d;

    return-object v0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    const-string v1, "userDisabledAdInformation"

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;Lcom/fusepowered/sa/android/publish/adinformation/d;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "userDisabledAdInformation"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/fusepowered/sa/android/publish/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->enabled:Z

    return v0
.end method

.method public c()F
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->fatFingersFactor:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->dialogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/fusepowered/sa/android/publish/adinformation/e;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->SimpleToken:Lcom/fusepowered/sa/android/publish/adinformation/e;

    return-object v0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->ImageResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->getByName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;Lcom/fusepowered/sa/android/publish/adinformation/d;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 5

    invoke-static {}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->values()[Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdInformation error in ImageResource ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] cannot be found in MetaData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected h()V
    .locals 6

    invoke-static {}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->values()[Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/d;

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->c(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/d;

    move-result-object v0

    iget-object v5, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->ImageResources:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->getDefaultWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/fusepowered/sa/android/publish/adinformation/d;->a(I)V

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->getDefaultHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fusepowered/sa/android/publish/adinformation/d;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
