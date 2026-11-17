.class public final Lcom/chillingo/liboffers/test/InjectedIntoBean_;
.super Lcom/chillingo/liboffers/test/InjectedIntoBean;
.source "InjectedIntoBean_.java"


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/chillingo/liboffers/test/InjectedIntoBean;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->context_:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->init_()V

    .line 21
    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/test/InjectedIntoBean_;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;

    invoke-direct {v0, p0}, Lcom/chillingo/liboffers/test/InjectedIntoBean_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/chillingo/liboffers/test/InjectedBean_;->getInstance_(Landroid/content/Context;)Lcom/chillingo/liboffers/test/InjectedBean_;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->injectedBean:Lcom/chillingo/liboffers/test/InjectedBean;

    .line 45
    return-void
.end method


# virtual methods
.method public afterSetContentView_()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->injectedBean:Lcom/chillingo/liboffers/test/InjectedBean;

    check-cast v0, Lcom/chillingo/liboffers/test/InjectedBean_;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/test/InjectedBean_;->afterSetContentView_()V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->context_:Landroid/content/Context;

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
    .line 52
    iput-object p1, p0, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->context_:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/chillingo/liboffers/test/InjectedIntoBean_;->init_()V

    .line 54
    return-void
.end method
