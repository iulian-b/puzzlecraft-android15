.class public Lcom/fusepowered/sa/android/publish/adinformation/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x99c39c5b9072fdcL


# instance fields
.field private enable:Z

.field private enableOverride:Z

.field private position:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

.field private positionOverride:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->enableOverride:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->enable:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->positionOverride:Z

    sget-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;->getByName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->position:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    return-void
.end method

.method public static a()Lcom/fusepowered/sa/android/publish/adinformation/b;
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/b;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/adinformation/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;)V
    .locals 1

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->position:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->positionOverride:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->positionOverride:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->enable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->enableOverride:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->enable:Z

    return v0
.end method

.method public c()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->position:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->positionOverride:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/b;->enableOverride:Z

    return v0
.end method
