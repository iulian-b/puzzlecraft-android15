.class public final Lcom/chillingo/liboffers/utils/UuidUtils_;
.super Lcom/chillingo/liboffers/utils/UuidUtils;
.source "UuidUtils_.java"


# static fields
.field private static instance_:Lcom/chillingo/liboffers/utils/UuidUtils_;


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/chillingo/liboffers/utils/UuidUtils;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/chillingo/liboffers/utils/UuidUtils_;->context_:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/chillingo/liboffers/utils/UuidUtils_;->init_()V

    .line 22
    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/utils/UuidUtils_;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/chillingo/liboffers/utils/UuidUtils_;->instance_:Lcom/chillingo/liboffers/utils/UuidUtils_;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/chillingo/liboffers/utils/UuidUtils_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/utils/UuidUtils_;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chillingo/liboffers/utils/UuidUtils_;->instance_:Lcom/chillingo/liboffers/utils/UuidUtils_;

    .line 51
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/utils/UuidUtils_;->instance_:Lcom/chillingo/liboffers/utils/UuidUtils_;

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils_;->context_:Landroid/content/Context;

    iput-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils_;->context:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 28
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chillingo/liboffers/utils/UuidUtils_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 36
    .local v0, "activity_":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public rebind(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    return-void
.end method
