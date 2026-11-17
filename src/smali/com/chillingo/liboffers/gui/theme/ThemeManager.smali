.class public Lcom/chillingo/liboffers/gui/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static final ENABLE_THEMEMANAGER_LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersThemeManager"

.field private static ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;


# instance fields
.field private activeTheme:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/theme/Theme;",
            ">;"
        }
    .end annotation
.end field

.field private themeCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/liboffers/gui/theme/Theme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->themeCache:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/chillingo/liboffers/gui/theme/ThemeManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    invoke-direct {v0}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;-><init>()V

    sput-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    return-object v0
.end method

.method public static hasSharedInstance()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->shutdown()V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->ourInstance:Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public activeTheme()Lcom/chillingo/liboffers/gui/theme/Theme;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/theme/Theme;

    return-object v0
.end method

.method public activeThemeHasCapability(Ljava/lang/String;)Z
    .locals 1
    .param p1, "capability"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/chillingo/liboffers/gui/theme/Theme;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method checkThemeVersion()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method setActiveTheme(Lcom/chillingo/liboffers/gui/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/chillingo/liboffers/gui/theme/Theme;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme:Ljava/lang/ref/WeakReference;

    .line 165
    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 8
    .param p1, "themeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid theme name specified"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_1
    const/4 v2, 0x0

    .line 77
    .local v2, "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->themeCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chillingo/liboffers/gui/theme/Theme;

    .line 79
    .local v4, "tempTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    invoke-virtual {v4}, Lcom/chillingo/liboffers/gui/theme/Theme;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    move-object v2, v4

    move-object v3, v2

    .line 87
    .end local v2    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .end local v4    # "tempTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .local v3, "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    :goto_0
    if-nez v3, :cond_3

    .line 90
    :try_start_0
    new-instance v2, Lcom/chillingo/liboffers/gui/theme/Theme;

    invoke-direct {v2, p1}, Lcom/chillingo/liboffers/gui/theme/Theme;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v3    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .restart local v2    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    :try_start_1
    iget-object v5, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->themeCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    invoke-virtual {p0, v2}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->setActiveTheme(Lcom/chillingo/liboffers/gui/theme/Theme;)V

    .line 105
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->checkThemeVersion()V

    .line 106
    return-void

    .line 94
    .end local v2    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .restart local v3    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 97
    .end local v3    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    :goto_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create theme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v2    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .restart local v3    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    :cond_3
    move-object v2, v3

    .end local v3    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .restart local v2    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    goto :goto_1

    :cond_4
    move-object v3, v2

    .end local v2    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    .restart local v3    # "newActiveTheme":Lcom/chillingo/liboffers/gui/theme/Theme;
    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string v0, "OffersThemeManager"

    const-string v1, "ThemeManager shutdown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 62
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->themeCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    iput-object v3, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->themeCache:Ljava/util/ArrayList;

    .line 64
    iput-object v3, p0, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme:Ljava/lang/ref/WeakReference;

    .line 65
    return-void
.end method
