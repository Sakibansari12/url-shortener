<aside class="sidebar">
    <div class="logo">
        <a href="{{route('pms.dashboard')}}">
            <!-- <img src="{{asset('assets/pms/images/logo-horizontal.svg')}}" alt=""> -->
             <h4>Technical Test</h4>
        </a>
        <span class="menu-close">
            &times;
        </span>
    </div>
    <nav class="main-nav">
        <ul  class="d-flex flex-column">
            @if(Auth::guard('admin')->user()->role_id == 1 || Auth::guard('admin')->user()->role_id == 2) 
            <li class="{{ request()->routeIs('pms.dashboard') ? 'active' : '' }}">
                <a href="{{route('pms.dashboard')}}">
                    <i class="icon-dashboard"></i><span>Dashboard</span>
                </a>
            </li> 
            @endif
            @if(Auth::guard('admin')->user()->role_id == 1) 
            <li class="{{ request()->routeIs('pms.company.list') ? 'active' : '' }}">
                <a href="{{route('pms.company.list')}}">
                    <i class="icon-dashboard"></i><span>Company</span>
                </a>
            </li> 
            @endif
           
            @if(Auth::guard('admin')->user()->role_id == 1 || Auth::guard('admin')->user()->role_id == 2)  
                <li class="has-dropdown {{ request()->routeIs('pms.user.list') ? 'active' : '' }}">
                    <a href="javascript:void(0)"><i class="material-symbols-outlined">group</i><span>User</span></a>
                    <div class="submenu" >
                        <ul>
                            <li><a href="{{route('pms.user.form')}}">Add</a></li>
                            <li><a href="{{route('pms.user.list')}}">Manage</a></li>
                        </ul>
                    </div>
                </li>
                <!-- <li class="has-dropdown {{ request()->routeIs('pms.invitation.list') ? 'active' : '' }}">
                    <a href="javascript:void(0)"><i class="material-symbols-outlined">group</i><span>Invitation</span></a>
                    <div class="submenu" >
                        <ul>
                            <li><a href="{{route('pms.invitation.form')}}">Add</a></li>
                            <li><a href="{{route('pms.invitation.list')}}">Manage</a></li>
                        </ul>
                    </div>
                </li> -->
            @endif 
 

                <li class="has-dropdown {{ request()->routeIs('pms.shorturl.list') ? 'active' : '' }}">
                    <a href="javascript:void(0)"><i class="material-symbols-outlined">group</i><span>Short URL</span></a>
                    <div class="submenu" >
                        <ul>
                            <li><a href="{{route('pms.shorturl.form')}}">Add</a></li>
                            <li><a href="{{route('pms.shorturl.list')}}">Manage</a></li>
                        </ul>
                    </div>
                </li>


            <li class="mt-auto"><a href="{{route('pms.logout')}}"><i class="icon-logout"></i><span>Logout</span></a></li>
        </ul>
    </nav>
 </aside>